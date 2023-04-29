import 'package:flutter/material.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/main_header.dart';
import '../../widgets/sub_page_avatar.dart';
import 'components/setting_body.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static String get routeName => 'setting';
  static String get routeLocation => '/setting';

  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: Column(
        children: [
          const MainHeader('CÁ NHÂN'),
          const SizedBox(
            height: 60,
          ),
          MainBody(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Avatar(),
                const SizedBox(
                  height: 32,
                ),
                SettingBody(),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
