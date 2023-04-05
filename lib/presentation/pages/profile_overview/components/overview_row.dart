import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class OverviewRow extends ConsumerWidget {
  const OverviewRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);
    final projectsCount =
        ref.watch(projectsCountProvider).whenOrNull(data: (data) => data);
    final totalWorkHours =
        ref.watch(memberWorkHoursProvider).whenOrNull(data: (data) => data);

    return SizedBox(
        width: 360.w,
        height: 60.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  totalWorkHours != null ? '$totalWorkHours' : '0',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.numberFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Giờ làm việc',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  projectsCount != null ? '$projectsCount' : '0',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.numberFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Dự án tham gia',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.numberFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Chứng chỉ',
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ],
        ).px8());
  }
}
