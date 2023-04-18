import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../domain/Payslip/payslip_model.dart';

class PayslipPointRow extends StatelessWidget {
  const PayslipPointRow({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: global.cyan,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.businessTime,
                  color: global.background,
                  size: 25,
                ),
                const SizedBox(height: 8),
                Text(
                  'Point P1',
                  style: global.boldSmallTextStyle,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: global.yellow,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.fileCircleCheck,
                  color: global.background,
                  size: 25,
                ),
                const SizedBox(height: 8),
                Text(
                  'Point P2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.background,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: global.primary2,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.userClock,
                  color: global.background,
                  size: 25,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Point P3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.background,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
