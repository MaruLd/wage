import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../domain/Payslip/payslip_model.dart';

class PayslipHeaderP1 extends ConsumerWidget {
  const PayslipHeaderP1({Key? key, required this.payslip}) : super(key: key);
  final Payslip payslip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'TỔNG POINT P1 - VỊ TRÍ',
                    style: GoogleFonts.openSans(
                      color: global.smallText,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${pointFormat(payslip.totalP1!)}',
                        style: GoogleFonts.montserrat(
                          color: global.yellow,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FaIcon(FontAwesomeIcons.coins,
                          color: global.yellow, size: 20),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(36, 188, 151, 48),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    height: 25,
                    width: 90,
                    child: Text(
                      'Level: Seed',
                      style: GoogleFonts.openSans(
                        color: global.yellow,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ).centered(),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  CircularPercentIndicator(
                    radius: 34.0,
                    lineWidth: 6.5,
                    percent: 0.5,
                    animationDuration: 800,
                    animation: true,
                    reverse: true,
                    center: new Text(
                      '50%',
                      style: GoogleFonts.montserrat(
                        color: global.normalText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    progressColor: global.medium,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(25, 48, 188, 151),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    height: 25,
                    width: 150,
                    child: Text(
                      'Level kế tiếp: Growth',
                      style: GoogleFonts.openSans(
                        color: global.primary2,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ).centered(),
                  ),
                ],
              ),
            ]),
      ],
    );
  }
}
