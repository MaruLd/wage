import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../pages/level/level_page.dart';

void _XpPageNavigation(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LevelPage()),
  );
}

class XpCard extends ConsumerWidget {
  const XpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    String? levelColor =
        userData.whenOrNull(data: (data) => data.memberLevels.level.levelColor);
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
                                data.memberLevels.level.levelName,
                                style: global.boldTextStyle),
                            error: (error, stackTrace) =>
                                Text('No Rank', style: global.boldTextStyle),
                            loading: () =>
                                CircularProgressIndicator(color: global.primary)
                                    .centered()),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                        child: Container(
                          width: 150.w,
                          child: userData.when(
                              data: (data) => Text(
                                    'Còn ${data.memberLevels.level.xpNeeded} xp nữa bạn sẽ thăng hạng',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      color: global.background,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                              error: (error, stackTrace) => Text(
                                    'Còn 0 xp nữa bạn sẽ thăng hạng',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      color: global.background,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                              loading: () => CircularProgressIndicator(
                                      color: global.primary)
                                  .centered()),
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
