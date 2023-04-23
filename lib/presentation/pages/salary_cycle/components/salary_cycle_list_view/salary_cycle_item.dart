import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/utils/navigation.dart';
import '../../../../../domain/SalaryCycle/salary_cycle_model.dart';

class SalaryCycleItem extends ConsumerWidget {
  SalaryCycleItem({Key? key, required this.salaryCycle, this.onTap})
      : super(key: key);
  final SalaryCycle salaryCycle;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalPoint = ref
        .watch(payslipFutureProvider(salaryCycle.salaryCycleId))
        .whenOrNull(data: (data) {
      return pointFormat(
          data.totalP1! + data.totalP2! + data.totalP3! + data.totalBonus!);
    });
    return GestureDetector(
      onTap: () => payslipPageNavigation(context, salaryCycle),
      child: Container(
        decoration: BoxDecoration(
            color: global.background,
            border: BorderDirectional(
                bottom:
                    BorderSide(color: Colors.grey.withOpacity(0.3), width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 320,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${salaryCycle.name}',
                          style: GoogleFonts.montserrat(
                            color: global.headerText,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          totalPoint ?? '0',
                          style: GoogleFonts.montserrat(
                            color: global.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(salaryCycle.createdAt),
                  style: GoogleFonts.montserrat(
                    color: global.smallText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${salaryCycleStatusTransform(salaryCycle.status)}',
                      style: GoogleFonts.openSans(
                        color: salaryCycleStatusColor(salaryCycle.status),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      salaryCycle.endedAt != null
                          ? ' - ${DateFormat('dd/MM/yyyy').format(salaryCycle.endedAt!).toString()}'
                          : '',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
    );
  }
}
