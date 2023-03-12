import 'package:flutter/material.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

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
            // HomePageHeader(),
            // Profile(),
            // VoucherBody(),
            // MyVoucherItem()
          ],
        ),
      ),
    );
  }
}
