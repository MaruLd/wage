import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/providers/auth_datas_provider.dart';

import '../../providers/api_provider.dart';
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(authProvider.select(
      (value) => value.valueOrNull?.displayName,
    ));

    final userData = ref.watch(userDataProvider);

    return Scaffold(
      backgroundColor: global.primary2,
      body: userData.when(
        data: (userData) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //header
                HomePageHeader(username: name, avatarUrl: userData.imageUrl),
                //point card
                PointCard(point: userData.memberLevels.level.basePoint),
                // 3 menu
                MenuBody(),
              ],
            ).safeArea(),
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => CircularProgressIndicator().centered(),
      ),
    );
  }
}
