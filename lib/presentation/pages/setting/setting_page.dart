import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/application/providers/auth_datas_provider.dart';

import 'components/body.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(24),
      children: [
        const SizedBox(
          height: 12,
        ),
        ProfileHeader(),
        SettingsGroup(title: 'Tổng quan', children: <Widget>[
          const SizedBox(
            height: 8,
          ),
          Profile(),
          Notifications(),
          Logout(),
        ])
      ],
    ));
  }
}
