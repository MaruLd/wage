import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/project/project_detail.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectXPItem extends StatelessWidget {
  ProjectXPItem({Key? key, required this.project, this.onTap})
      : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(children: [
        Column(
          children: [
            Text(
              project.projectShortName,
              style: TextStyle(
                color: global.normalText,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            Text(
              '18/12/2022',
              style: TextStyle(
                color: global.normalText,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '500',
          style: TextStyle(
            color: global.primary,
            fontFamily: global.headerFont,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ]),
    );
  }
}
