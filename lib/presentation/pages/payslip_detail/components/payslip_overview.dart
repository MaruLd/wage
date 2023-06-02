import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/pages/payslip_detail/components/payslip_detail/payslip_point_detail.dart';
import 'package:wage/presentation/pages/payslip_detail/components/payslip_task/payslip_with_tasks.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../widgets/loading_shimmer.dart';

class PayslipOverview extends ConsumerStatefulWidget {
  const PayslipOverview({Key? key, required this.salaryCycle})
      : super(key: key);
  final SalaryCycle salaryCycle;

  @override
  ConsumerState<PayslipOverview> createState() => _PayslipOverviewState();
}

class _PayslipOverviewState extends ConsumerState<PayslipOverview> {
  @override
  Widget build(BuildContext context) {
    final payslip =
        ref.watch(payslipFutureProvider(widget.salaryCycle.salaryCycleId));

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: global.background,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Từ ngày',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(widget.salaryCycle.createdAt),
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ).px20(),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: global.background,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Đến ngày',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  widget.salaryCycle.endedAt != null
                      ? DateFormat('dd/MM/yyyy')
                          .format(widget.salaryCycle.endedAt!)
                      : '',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ).px20(),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      // second row: point and xp
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(15, 48, 188, 150),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                payslip.when(
                  data: (data) {
                    return Text(
                        'Tổng: ${pointFormat(data.totalP1! + data.totalP2! + data.totalP3! + data.totalBonus!)}',
                        style: GoogleFonts.montserrat(
                          color: global.yellow,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ));
                  },
                  error: (error, stackTrace) {
                    debugPrint(error.toString());
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('Chưa có phiếu lương',
                                  style: GoogleFonts.montserrat(
                                    color: global.headerText,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  )),
                              content:
                                  Text('Phiếu lương hiên tại chưa báo cáo xong',
                                      style: GoogleFonts.montserrat(
                                        color: global.normalText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      )),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Ok'),
                                  child: Text('Ok',
                                      style: GoogleFonts.montserrat(
                                        color: global.primary2,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      )),
                                ),
                              ],
                            ));
                    return const LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => const LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
                const SizedBox(
                  width: 4,
                ),
                const FaIcon(FontAwesomeIcons.coins,
                    color: global.yellow, size: 16),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(15, 48, 188, 151),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                payslip.when(
                  data: (data) {
                    return Text('XP: ${pointFormat(data.totalXP!)}',
                        style: GoogleFonts.montserrat(
                          color: global.darkGreen,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ));
                  },
                  error: (error, stackTrace) {
                    debugPrint(error.toString());
                    return const LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => const LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
                const SizedBox(
                  width: 4,
                ),
                const FaIcon(FontAwesomeIcons.solidPaperPlane,
                    color: global.darkGreen, size: 16),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      PayslipPointDetail(
        salaryCycleId: widget.salaryCycle.salaryCycleId,
        payslipItemType: PayslipItemTypeEnum.p1,
        pointTitle: 'Tổng Point P1',
        description: 'Vị trí (Level)',
        icon: const FaIcon(FontAwesomeIcons.businessTime,
                color: global.background, size: 23)
            .centered(),
        iconColor: global.cyan,
      ),
      PayslipPointDetail(
        salaryCycleId: widget.salaryCycle.salaryCycleId,
        payslipItemType: PayslipItemTypeEnum.p2,
        pointTitle: 'Tổng Point P2',
        description: 'Năng lực',
        icon: const FaIcon(FontAwesomeIcons.userClock,
                color: global.background, size: 23)
            .centered(),
        iconColor: global.yellow,
      ),
      PayslipWithTask(
        salaryCycleId: widget.salaryCycle.salaryCycleId,
      ),
      PayslipPointDetail(
        salaryCycleId: widget.salaryCycle.salaryCycleId,
        payslipItemType: PayslipItemTypeEnum.bonus,
        pointTitle: 'Tổng Bonus',
        description: 'Point thưởng',
        icon: const FaIcon(FontAwesomeIcons.gift,
                color: global.background, size: 23)
            .centered(),
        iconColor: global.danger,
      ),
    ]);
  }
}
