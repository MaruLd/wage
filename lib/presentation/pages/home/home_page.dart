import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import '../../../application/providers/api_provider.dart';
import '../error/error_page.dart';
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Null> _refreshData() async {
      Future.delayed(const Duration(milliseconds: 500), () {
        ref.refresh(userDataProvider);
        ref.refresh(walletsDataProvider);
        ref.refresh(serverAvailableProvider);
        print('refreshing data...');
      });
    }

    return Scaffold(
        backgroundColor: global.primary2,
        body: RefreshIndicator(
          color: global.primary,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: _refreshData,
          child: Stack(children: <Widget>[
            ListView(),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  HomePageHeader(),
                  const SizedBox(
                    height: 60,
                  ),
                  MenuBody(),
                ],
              ),
            )
          ]),
        ));
  }
}
