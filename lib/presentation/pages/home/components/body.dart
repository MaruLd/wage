import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/point_card.dart';
import 'package:wage/presentation/pages/salaryCycle/salary_cycle_page.dart';
import 'package:wage/presentation/widgets/loading_shimmer.dart';
import 'package:wage/presentation/widgets/xp_card.dart';
import 'package:wage/presentation/pages/profile/profile_page.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import '../../error/error_page.dart';
import '../../voucher/voucher_page.dart';
import '../../level/level_page.dart';

void _ProfilePageNavigation(BuildContext context) {
  Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(
      builder: (_) => ProfilePage(),
    ),
  );
}

void _NotificationsPageNavigation(BuildContext context) {
  Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(
      builder: (_) => ProfilePage(),
    ),
  );
}

void _SalaryCyclePageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SalaryCyclePage()),
  );
}

void _WalletPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ErrorPage()),
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
                        return LoadingShimmer(
                          height: 25.0,
                          width: 190.0,
                          color: Color.fromARGB(118, 2, 193, 123),
                          baseColor: Color.fromARGB(118, 0, 100, 63),
                        );
                      },
                      loading: () => LoadingShimmer(
                        height: 25.0,
                        width: 190.0,
                        color: Color.fromARGB(118, 2, 193, 123),
                        baseColor: Color.fromARGB(118, 0, 100, 63),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ).flexible(),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              _NotificationsPageNavigation(context);
            },
            icon: Icon(
              CupertinoIcons.bell_solid,
              color: global.background,
              size: 30.0,
            ),
          ),
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
                          return LoadingShimmer(
                            height: 25.0,
                            width: 190.0,
                            color: Color.fromARGB(118, 2, 193, 123),
                          );
                        },
                        loading: () => LoadingShimmer(
                          height: 25.0,
                          width: 190.0,
                          color: Color.fromARGB(118, 2, 193, 123),
                        ),
                      ),
                    ),
                  ),
                ),
              )
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
    return Container(
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
            const SizedBox(
              height: 20,
            ),
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
                        _SalaryCyclePageNavigation(context);
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
                        _WalletPageNavigation(context);
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
                            size: 22,
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
                  ),
                ],
              ),
            ),
            // xp card
            XpCard(),
          ],
        ).offset(offset: Offset(0, -85)));
  }
}
