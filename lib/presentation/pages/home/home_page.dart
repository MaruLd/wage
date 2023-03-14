import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: global.primary2,
        body: SingleChildScrollView(
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
        ));
  }
}
