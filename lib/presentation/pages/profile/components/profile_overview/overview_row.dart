import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/project/project_item.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class OverviewRow extends ConsumerWidget {
  const OverviewRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
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
                        '56',
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
                        '40',
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
                        '14',
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
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}
