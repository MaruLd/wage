import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/utils/formatter.dart';
import '../../../widgets/note_parser.dart';
import '../../../widgets/point_icon.dart';

class PayslipItem extends StatelessWidget {
  const PayslipItem({Key? key, required this.payslipItem}) : super(key: key);
  final Item payslipItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FaIcon(FontAwesomeIcons.moneyCheck, color: global.primary2, size: 18),
        const SizedBox(
          width: 18,
        ),
        Container(
            width: 180,
            child: payslipItem.type == PayslipItemTypeEnum.p1
                ? Text(payslipItem.note ?? '',
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ))
                : ParseNote(note: payslipItem.note ?? '')),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                pointFormat(payslipItem.amount!),
                style: GoogleFonts.montserrat(
                  color: global.headerText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              PointIcon(size: 14, color: global.yellow),
            ],
          ).px4(),
        ),
      ],
    ).p8();
  }
}
