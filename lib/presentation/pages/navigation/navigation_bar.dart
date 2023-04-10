import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/transaction/transaction_page.dart';
import 'package:wage/presentation/pages/transfer/transfer_page.dart';
import 'package:wage/presentation/pages/welcome/sign_in_page.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../application/providers/api_provider.dart';
import '../../../application/providers/auth_datas_provider.dart';
import '../error/error_page.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';
import '../salary_cycle/salary_cycle_page.dart';
import '../setting/setting_page.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Background message: ${message.data}");
}

class Navigation extends ConsumerStatefulWidget {
  const Navigation({super.key});
  static String get routeName => 'nav';
  static String get routeLocation => '/';
  static int _selectedIndex = 0;
  static void setPageIndex(BuildContext context, int index) {
    _NavigationState? stateObject =
        context.findAncestorStateOfType<_NavigationState>();
    stateObject?.setState(() {
      _selectedIndex = index;
    });
  }

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends ConsumerState<Navigation> {
  @override
  void initState() {
    init();
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(fcmTokenProvider);
    });
  }

  init() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
    5: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const TransactionPage(),
    const TransferPage(),
    const SalaryCyclePage(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      Navigation._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final token = ref.read(apiTokenCheck);
    var serverAvailable = ref.watch(serverAvailableProvider);
    final authState = ref.watch(authProvider);
    Future.delayed(Duration(seconds: 2), () {
      try {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (serverAvailable.valueOrNull == null &&
              !serverAvailable.isLoading) {
            print('ERROR: Server is down');
            Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (_) => ErrorPage(),
            ));
          } else if (authState.valueOrNull == null && !authState.isLoading) {
            print('ERROR: Token not found');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
            );
          }
        });
      } catch (ex) {
        print(Exception(ex));
      }
    });
    return token.when(
      error: (error, stackTrace) => const ErrorPage(),
      loading: () =>
          CircularProgressIndicator(color: global.primary).centered(),
      data: (data) => Scaffold(
        backgroundColor: global.background,
        extendBody: true,
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: global.primary,
          child: Icon(Icons.sync_alt),
          onPressed: () => _onItemTapped(2),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 20.0,
          color: global.background,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: BottomNavigationBar(
            unselectedItemColor: Color.fromARGB(255, 119, 119, 119),
            selectedItemColor: global.primary,
            selectedFontSize: 12,
            backgroundColor: global.background,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: Navigation._selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: FaIcon(FontAwesomeIcons.house, size: 23).py4(),
                icon: FaIcon(FontAwesomeIcons.house, size: 20).py4(),
                label: 'Trang Chủ',
              ),
              BottomNavigationBarItem(
                activeIcon:
                    FaIcon(FontAwesomeIcons.moneyBillTransfer, size: 23).py4(),
                icon:
                    FaIcon(FontAwesomeIcons.moneyBillTransfer, size: 20).py4(),
                label: 'Lịch Sử',
              ),
              BottomNavigationBarItem(
                icon: const SizedBox.shrink(),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon:
                    FaIcon(FontAwesomeIcons.fileInvoiceDollar, size: 23).py4(),
                icon:
                    FaIcon(FontAwesomeIcons.fileInvoiceDollar, size: 20).py4(),
                label: 'Kỳ Lương',
              ),
              BottomNavigationBarItem(
                activeIcon: FaIcon(FontAwesomeIcons.solidUser, size: 23).py4(),
                icon: FaIcon(FontAwesomeIcons.solidUser, size: 20).py4(),
                label: 'Cá Nhân',
              ),
            ],
          ),
        ),
        body: buildNavigator(context),
      ),
    );
  }

  buildNavigator(BuildContext context) {
    return Navigator(
      key: navigatorKeys[Navigation._selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) =>
                _widgetOptions.elementAt(Navigation._selectedIndex));
      },
    );
  }
}
