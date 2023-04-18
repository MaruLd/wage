import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../domain/Payslip/payslip_model.dart';

class PayslipBodyP1 extends ConsumerWidget {
  const PayslipBodyP1({Key? key, required this.payslip}) : super(key: key);
  final Payslip payslip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
                    child: Text(
                      'U1',
                      style: GoogleFonts.montserrat(
                        color: global.headerText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    )),
              ]),
              Icon(Icons.keyboard_arrow_right,
                  color: Colors.grey.withOpacity(0.5), size: 25),
            ],
          ),
        ),
      ],
    );
  }
}
