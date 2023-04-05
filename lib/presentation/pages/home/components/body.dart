import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/widgets/point_card.dart';
import 'package:wage/presentation/widgets/xp_card.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import '../../../../application/utils/navigation.dart';
import '../../voucher/voucher_page.dart';

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
          height: 15,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 25, 30, 40),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 103, 152),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoucherPage()),
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.handHoldingDollar,
                        color: global.background,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Voucher',
                          style: global.boldSmallTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 153, 104, 237),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: TextButton(
                  onPressed: () {
                    salaryCyclePageNavigation(context);
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Kỳ lương',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: global.background,
                            fontFamily: global.headerFont,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: global.primary2,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.r,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: TextButton(
                  onPressed: () {
                    walletPageNavigation(context);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: global.background,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Ví của tôi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: global.background,
                            fontFamily: global.headerFont,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // 2 menu
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: TextButton(
                  onPressed: () {
                    salaryCyclePageNavigation(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 15),
                        child: FaIcon(
                          FontAwesomeIcons.fileInvoiceDollar,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kỳ lương',
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
                    ],
                  ),
                ),
              ),
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
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: TextButton(
                    onPressed: () {
                      reportPageNavigation(context);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Icon(
                            Icons.receipt_long_sharp,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Báo cáo',
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
                      ],
                    ),
                  )),
            ],
          ),
        ),
        // xp card
        XpCard(),
      ],
    );
  }
}
