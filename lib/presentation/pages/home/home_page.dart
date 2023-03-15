import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import '../../providers/api_provider.dart';
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Null> _refreshData() async {
      ref.refresh(userDataProvider);
      ref.refresh(walletsDataProvider);
      print('refreshing data...');
    }

    return Scaffold(
        backgroundColor: global.primary2,
        body: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: _refreshData,
          child: Stack(children: <Widget>[
            ListView(),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageHeader(),
                  const SizedBox(
                    height: 60,
                  ),
                  MenuBody(),
                ],
              ).safeArea(),
            )
          ]),
        ));
  }
}
