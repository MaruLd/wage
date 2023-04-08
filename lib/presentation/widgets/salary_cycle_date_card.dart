import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../application/utils/formatter.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import 'card.dart';

class SalaryCycleCard extends StatelessWidget {
  const SalaryCycleCard({Key? key, required this.salaryCycle})
      : super(key: key);
  final SalaryCycle salaryCycle;

  @override
  Widget build(BuildContext context) {
    return MainCard(
        child: Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 14,
          ),
          Text(
            'Kỳ lương',
            style: GoogleFonts.montserrat(
              color: global.secondary2,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${DateFormat('MM/yyyy').format(salaryCycle.createdAt)}',
                style: GoogleFonts.montserrat(
                  color: global.background,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(Icons.calendar_month_outlined,
                  color: global.background, size: 26),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Trạng thái',
            style: GoogleFonts.montserrat(
              color: global.secondary2,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${salaryCycleStatusTransform(salaryCycle.status)}',
            style: GoogleFonts.montserrat(
              color: salaryCycleStatusColor(salaryCycle.status),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    ));
  }
}
