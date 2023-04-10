import 'package:flutter/material.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/sub_header.dart';
import 'components/payslip_general.dart';
import '../../widgets/salary_cycle_date_card.dart';

class PayslipPage extends StatelessWidget {
  const PayslipPage({super.key, required this.salaryCycle});
  final SalaryCycle salaryCycle;
  @override
  Widget build(BuildContext context) {
    return Refresher(
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
                height: 20,
              ),
              PayslipGeneral(salaryCycle: salaryCycle)
            ],
          ))
        ],
      ),
    );
  }
}
