import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/refresher.dart';

import 'components/body.dart';

class PayslipPage extends StatelessWidget {
  const PayslipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        children: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Payslip',
              style: global.boldTextStyle,
            ).centered()
          ],
        ),
      ).safeArea(),
    );
  }
}
