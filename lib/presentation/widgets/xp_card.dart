import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../pages/level/level_page.dart';
import 'loading_shimmer.dart';

void _XpPageNavigation(context) {
  Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(
      builder: (_) => LevelPage(),
    ),
  );
}

class XpCard extends ConsumerWidget {
  const XpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    final nextLevel = ref.watch(nextLevelDataProvider);
    final walletData = ref.watch(walletsDataProvider);

    String? levelColor =
        userData.whenOrNull(data: (data) => data.memberLevels!.level.levelColor);
    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 151.h,
              width: 325.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.black,
                    offset: Offset(0, 2),
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(83, 160, 110, 1),
                    // Color.fromARGB(255, 83, 160, 110),
                    Color.fromARGB(255, 101, 197, 134)
                  ],
                  stops: [0, 5],
                  begin: AlignmentDirectional(0, 0),
                  end: AlignmentDirectional(0, 5),
                ),
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                        child: userData.when(
                          data: (data) => Text(
                              data.memberLevels!.level.levelName,
                              style: global.boldTextStyle),
                          error: (error, stackTrace) => LoadingShimmer(
                            height: 30.0,
                            width: 100.0,
                            color: Color.fromARGB(118, 2, 193, 123),
                          ),
                          loading: () => LoadingShimmer(
                            height: 30.0,
                            width: 100.0,
                            color: Color.fromARGB(118, 2, 193, 123),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                        child: Container(
                          width: 150.w,
                          child: nextLevel.when(
                            data: (data) {
                              int? userXp = walletData.whenOrNull(
                                  data: (data) => data.totalXP);
                              int xpNeededToLevelUp =
                                  data.xpNeeded - (userXp != null ? userXp : 0);
                              return Text(
                                'Còn $xpNeededToLevelUp xp nữa bạn sẽ thăng hạng',
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  color: global.background,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              );
                            },
                            error: (error, stackTrace) => LoadingShimmer(
                              height: 35.0,
                              width: 240.0,
                              color: Color.fromARGB(118, 2, 193, 123),
                            ),
                            loading: () => LoadingShimmer(
                              height: 35.0,
                              width: 240.0,
                              color: Color.fromARGB(118, 2, 193, 123),
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          _XpPageNavigation(context);
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Xem thêm',
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  color: global.background,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Level 4.svg',
                          width: 102.w,
                          height: 122.h,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
