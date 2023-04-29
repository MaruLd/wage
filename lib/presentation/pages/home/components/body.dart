import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/widgets/point_card.dart';
import 'package:wage/presentation/widgets/level_card.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import '../../../../application/utils/navigation.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PointCard(),
        const SizedBox(
          height: 35,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 103, 152),
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
                onPressed: () => voucherPageNavigation(context),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.handHoldingDollar,
                      color: global.background,
                      size: 25,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Voucher',
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
                color: Color.fromARGB(255, 153, 104, 237),
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
                onPressed: () {
                  projectPageNavigation(context);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_copy,
                      color: global.background,
                      size: 25,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Các dự án',
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
                onPressed: () {
                  settingPageNavigation(context);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidUser,
                      color: global.background,
                      size: 24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Hồ sơ',
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
        ),
        const SizedBox(
          height: 35,
        ),
        // 2 menu
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 155,
              height: 62,
              decoration: BoxDecoration(
                color: Color.fromRGBO(254, 243, 231, 1),
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
                onPressed: () {
                  salaryCyclePageNavigation(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.fileInvoiceDollar,
                      color: Colors.grey,
                      size: 22,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Phiếu Lương',
                      style: GoogleFonts.montserrat(
                        color: Colors.brown,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30),
            Container(
                width: 155,
                height: 62,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(254, 243, 231, 1),
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
                  onPressed: () {
                    transactionPageNavigation(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.receipt_long_sharp,
                        color: Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Giao dịch',
                        style: GoogleFonts.montserrat(
                          color: Colors.brown,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        // xp card
        LevelCard(),
      ],
    );
  }
}
