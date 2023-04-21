import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wage/application/utils/navigation.dart';
import 'package:wage/presentation/pages/setting/components/setting_row.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import 'logout_button.dart';

class SettingBody extends StatelessWidget {
  SettingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SettingRow(
            icon: FaIcon(FontAwesomeIcons.solidUser, color: global.primary2),
            name: 'Hồ sơ của tôi',
            navigate: () => profilePageNavigation(context),
          ),
          const SizedBox(
            height: 30,
          ),
          SettingRow(
            icon: FaIcon(FontAwesomeIcons.solidBell, color: global.primary2),
            name: 'Thông báo',
            navigate: () => notificationPageNavigation(context),
          ),
          const SizedBox(
            height: 30,
          ),
          SettingRow(
            icon: FaIcon(FontAwesomeIcons.wallet, color: global.primary2),
            name: 'Ví của tôi',
            navigate: () => profilePageNavigation(context),
          ),
          const SizedBox(
            height: 30,
          ),
          SettingRow(
            icon: FaIcon(FontAwesomeIcons.lock, color: global.primary2),
            name: 'Đổi mã PIN',
            navigate: () => pinPageNavigation(context),
          ),
          const SizedBox(
            height: 45,
          ),
          Logout()
        ],
      ),
    );
  }
}
