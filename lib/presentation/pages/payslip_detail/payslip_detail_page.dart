import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../../application/providers/api_provider.dart';
import '../../widgets/salary_cycle_date_card.dart';
import '../../widgets/sub_header.dart';
import 'components/payslip_body_p1.dart';
import 'components/payslip_header_p1.dart';
import 'components/payslip_point_row.dart';

class PayslipDetailPage extends ConsumerWidget {
  const PayslipDetailPage({super.key, required this.salaryCycle});
  final SalaryCycle salaryCycle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payslipDetail = ref
            .watch(payslipFutureProvider(salaryCycle.salaryCycleId))
            .whenOrNull(data: (data) => data) ??
        Payslip(createdAt: DateTime.now(), payslipId: '');
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SubHeader(headerText:'PHIẾU LƯƠNG'),
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
                PayslipPointRow(),
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
                    child: PayslipHeaderP1(payslip: payslipDetail)),
                PayslipBodyP1(payslip: payslipDetail),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
