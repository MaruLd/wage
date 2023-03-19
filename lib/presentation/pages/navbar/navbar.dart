import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/history/history_page.dart';
import 'package:wage/presentation/pages/payslip/payslip_page.dart';
import 'package:wage/presentation/pages/setting/setting_page.dart';
import 'package:wage/presentation/pages/transfer/transfer_page.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../home/home_page.dart';
import '../level/level_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  static String get routeName => 'nav';
  static String get routeLocation => '/';

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HistoryPage(),
    const TransferPage(),
    const PayslipPage(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.background,
      extendBody: true,
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
          unselectedItemColor: global.secondary2,
          selectedItemColor: global.primary,
          backgroundColor: global.background,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: global.primary,
              ),
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Trang Chủ',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.history,
                color: global.primary,
              ),
              icon: Icon(Icons.history),
              label: 'Lịch Sử',
            ),
            BottomNavigationBarItem(
              icon: const SizedBox.shrink(),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.topic,
                color: global.primary,
              ),
              icon: Icon(Icons.topic_outlined),
              label: 'Phiếu Lương',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: global.primary,
              ),
              icon: Icon(Icons.person),
              label: 'Cá Nhân',
            ),
          ],
        ),
      ),
      body: buildNavigator(),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}
