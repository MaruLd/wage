import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import 'components/body.dart';

class VoucherPage extends StatelessWidget {
  static String get routeName => 'voucher';
  static String get routeLocation => '/voucher';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Empty',
              style: global.boldTextStyle,
            ).centered()
          ],
        ),
      ).safeArea(),
    );
  }
}
