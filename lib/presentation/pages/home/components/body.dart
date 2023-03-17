import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/home/components/point_card.dart';
import 'package:wage/presentation/widgets/xp_card.dart';
import 'package:wage/presentation/pages/profile/profile_page.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import '../../voucher/voucher_page.dart';
import '../../wallet/wallet_page.dart';

void _ProfilePageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
}

void _ProjectsPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
}

void _WalletPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WalletPage()),
  );
}

class HomePageHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xin chào,',
                      style: global.textStyle,
                    ),
                    userData.when(
                        // show previous data/error on loading
                        skipLoadingOnReload: true,
                        // show previous data if there's an error
                        skipError: true,
                        data: (userData) => Text(
                              userData.fullName,
                              style: global.boldTextStyle,
                            ),
                        error: (error, stackTrace) {
                          print(error.toString());
                          return Text('Username', style: global.boldTextStyle);
                        },
                        loading: () =>
                            CircularProgressIndicator(color: global.primary)
                                .centered()),
                  ],
                ),
              ],
            ),
          ).flexible(),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                onPressed: () {
                  _ProfilePageNavigation(context);
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: global.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: 60,
                      height: 60,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: userData.when(
                          // show previous data/error on loading
                          skipLoadingOnReload: true,
                          // show previous data if there's an error
                          skipError: true,
                          data: (userData) => userData.imageUrl != null
                              ? Image.network(userData.imageUrl!)
                              : Image.asset('assets/images/ANYAA.png'),
                          error: (error, stackTrace) {
                            print(error.toString());
                            return Image.asset(
                              'assets/images/ANYAA.png',
                            );
                          },
                          loading: () =>
                              CircularProgressIndicator(color: global.primary)
                                  .centered()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuBody extends StatelessWidget {
  const MenuBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: global.background,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x34000000),
                offset: Offset(0, -2),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const PointCard(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.w, 25.h, 30.w, 40.h),
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
                            MaterialPageRoute(
                                builder: (context) => VoucherPage()),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.handHoldingDollar,
                              color: global.background,
                              size: 25.sp,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
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
                          _ProjectsPageNavigation(context);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.folder_copy,
                              color: global.background,
                              size: 25.sp,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                'Các dự án',
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
                          _WalletPageNavigation(context);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: global.background,
                              size: 25.sp,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                'Ví của tôi',
                                style: global.boldSmallTextStyle,
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 0, 15),
                            child: FaIcon(
                              FontAwesomeIcons.fileInvoiceDollar,
                              color: Colors.grey,
                              size: 22.sp,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Phiếu lương',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
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
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // xp card
              XpCard(),
            ],
          ).offset(offset: Offset(0, -85))),
    );
  }
}
