import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/card.dart';
import '../../widgets/salary_cycle_date_card.dart';
import '../../widgets/sub_header.dart';
import 'components/payslip_body_p1.dart';
import 'components/payslip_header_p1.dart';
import 'components/payslip_point_row.dart';

class PayslipDetailPage extends StatelessWidget {
  const PayslipDetailPage(
      {super.key, required this.salaryCycle, required this.payslip});
  final Payslip payslip;
  final SalaryCycle salaryCycle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SubHeader('PHIẾU LƯƠNG'),
            const SizedBox(
              height: 80,
            ),
            MainBody(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SalaryCycleCard(salaryCycle: salaryCycle),
                const SizedBox(
                  height: 35,
                ),
                PayslipPointRow(payslip: payslip),
                const SizedBox(
                  height: 25,
                ),
                Container(
                    height: 135,
                    width: 330,
                    decoration: BoxDecoration(
                        color: global.background,
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.3),
                                width: 2))),
                    child: PayslipHeaderP1(payslip: payslip)),
                PayslipBodyP1(payslip: payslip),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
