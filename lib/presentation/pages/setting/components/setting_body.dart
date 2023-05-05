import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wage/application/utils/navigation.dart';
import 'package:wage/presentation/pages/setting/components/setting_row.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/providers/api_provider.dart';
import 'logout_button.dart';

class SettingBody extends ConsumerWidget {
  SettingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final havePin = ref.watch(checkPinProvider).whenOrNull(
          data: (data) => data,
        );
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
          havePin == true
              ? SettingRow(
                  icon: FaIcon(FontAwesomeIcons.lock, color: global.primary2),
                  name: 'Đổi Mã PIN',
                  navigate: () => pinPageNavigation(context),
                )
              : SettingRow(
                  icon: FaIcon(FontAwesomeIcons.lock, color: global.primary2),
                  name: 'Thêm Mã PIN',
                  navigate: () => newPinPageNavigation(context),
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
