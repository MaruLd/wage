import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/utils/navigation.dart';
import '../../../widgets/loading_shimmer.dart';

class PayslipGeneral extends ConsumerWidget {
  const PayslipGeneral({Key? key, required this.salaryCycle}) : super(key: key);
  final SalaryCycle salaryCycle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payslip = ref.watch(payslipFutureProvider(salaryCycle.salaryCycleId));
    final payslipDetail = ref
        .watch(payslipFutureProvider(salaryCycle.salaryCycleId))
        .whenOrNull(data: (data) => data);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: global.background,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20)),
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
                  DateFormat('dd/MM/yyyy').format(salaryCycle.createdAt),
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
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
                  salaryCycle.endedAt != null
                      ? DateFormat('dd/MM/yyyy').format(salaryCycle.endedAt!)
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
            decoration: BoxDecoration(
              color: Color.fromARGB(15, 48, 188, 150),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.coins, color: global.yellow, size: 20),
                const SizedBox(
                  width: 10,
                ),
                payslip.when(
                  data: (data) {
                    return Text(
                        'Point: ${multiplePointFormat(data.totalP1, data.totalP2, data.totalP3)}',
                        style: GoogleFonts.montserrat(
                          color: global.yellow,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ));
                  },
                  error: (error, stackTrace) {
                    print(error.toString());
                    return LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(15, 48, 188, 151),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.hourglassHalf,
                    color: global.darkGreen, size: 18),
                const SizedBox(
                  width: 10,
                ),
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
                    print(error.toString());
                    return LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      // Total points
      MaterialButton(
        onPressed: () =>
            payslipDetailPageNavigation(context, salaryCycle, payslipDetail!),
        child: Container(
          decoration: BoxDecoration(
            color: global.background,
            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          height: 75,
          width: 330,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: global.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  height: 50,
                  width: 50,
                  child: FaIcon(FontAwesomeIcons.businessTime,
                          color: global.background, size: 23)
                      .centered(),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tổng point P1',
                      style: GoogleFonts.montserrat(
                        color: global.normalText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Vị trí việc làm',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  width: 65,
                  alignment: AlignmentDirectional.center,
                  child: payslip.when(
                    data: (data) {
                      return Text(
                        pointFormat(data.totalP1!),
                        style: GoogleFonts.montserrat(
                          color: global.headerText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      print(error.toString());
                      return LoadingShimmer(
                        height: 20.0,
                        width: 70.0,
                        color: Color.fromARGB(146, 31, 255, 206),
                      );
                    },
                    loading: () => LoadingShimmer(
                        height: 20.0,
                        width: 70.0,
                        color: Color.fromARGB(146, 31, 255, 206)),
                  ),
                ),
              ]),
              Icon(Icons.keyboard_arrow_right,
                  color: Colors.grey.withOpacity(0.5), size: 25),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: global.background,
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: global.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: FaIcon(FontAwesomeIcons.fileCircleCheck,
                        color: global.background, size: 23)
                    .centered(),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tổng point P2',
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Năng lực',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 32,
              ),
              Container(
                width: 65,
                alignment: AlignmentDirectional.center,
                child: payslip.when(
                  data: (data) {
                    return Text(
                      pointFormat(data.totalP2!),
                      style: GoogleFonts.montserrat(
                        color: global.headerText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    );
                  },
                  error: (error, stackTrace) {
                    print(error.toString());
                    return LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
              ),
            ]),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: global.background,
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: global.primary2,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: FaIcon(FontAwesomeIcons.userClock,
                        color: global.background, size: 23)
                    .centered(),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tổng point P3',
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Hiệu suất làm việc',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 65,
                alignment: AlignmentDirectional.center,
                child: payslip.when(
                  data: (data) {
                    return Text(
                      pointFormat(data.totalP3!),
                      style: GoogleFonts.montserrat(
                        color: global.headerText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    );
                  },
                  error: (error, stackTrace) {
                    print(error.toString());
                    return LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206),
                    );
                  },
                  loading: () => LoadingShimmer(
                      height: 20.0,
                      width: 70.0,
                      color: Color.fromARGB(146, 31, 255, 206)),
                ),
              ),
            ]),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
    ]);
  }
}
