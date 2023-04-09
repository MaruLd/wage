import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../application/utils/navigation.dart';
import '../pages/level/level_page.dart';
import 'loading_shimmer.dart';

class LevelCard extends ConsumerWidget {
  const LevelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userFutureProvider);
    final nextLevel = ref.watch(nextLevelFutureProvider);
    final walletData = ref.watch(walletsFutureProvider);

    int? userXp = walletData.whenOrNull(data: (data) => data.totalXP);
    int? nextLevelXp = nextLevel.whenOrNull(data: (data) => data.xpNeeded);
    int xpNeededToLevelUp = nextLevelXp ?? 0 - (userXp ?? 0);

    String? levelColor = userData.whenOrNull(
        data: (data) => data.memberLevels!.level.levelColor);
    return MaterialButton(
      onPressed: () => levelPageNavigation(context),
      child: Container(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                userData.when(
                  data: (data) => Text(data.memberLevels!.level.levelName,
                      style: global.boldTextStyle),
                  error: (error, stackTrace) {
                    print('error: ' + error.toString());
                    return LoadingShimmer(
                      height: 30.0,
                      width: 100.0,
                      color: Color.fromARGB(118, 2, 193, 123),
                    );
                  },
                  loading: () => LoadingShimmer(
                    height: 30.0,
                    width: 100.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                  ),
                ),
                Container(
                  width: 150.w,
                  child: Text(
                    'Còn $xpNeededToLevelUp xp nữa bạn sẽ thăng hạng',
                    style: TextStyle(
                      color: global.background,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
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
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/images/Level 4.svg',
                  width: 102,
                  height: 122,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
