import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/card.dart';
import '../../widgets/sub_header.dart';
import 'components/payslip_general.dart';
import 'components/salary_cycle_date_card.dart';

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
            SubHeader('PHIẾU LƯƠNG'),
            const SizedBox(
              height: 80,
            ),
            MainBody(
                children: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SalaryCycleCard(),
                const SizedBox(
                  height: 20,
                ),
                PayslipGeneral()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
