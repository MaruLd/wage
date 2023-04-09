import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';

class ProjectXPItem extends StatelessWidget {
  ProjectXPItem({Key? key, required this.project, this.onTap})
      : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              project.projectName,
              style: TextStyle(
                color: global.headerText,
                fontFamily: global.headerFont,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            Text(
              '+ 0 XP',
              style: TextStyle(
                color: global.medium,
                fontFamily: global.numberFont,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ]),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                '${projectStatusTransform(project.projectStatus)} - ',
                style: TextStyle(
                  color: projectStatusColor(project.projectStatus),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                project.endedAt != null
                    ? DateFormat('dd/MM/yyyy').format(project.endedAt!)
                    : '',
                style: TextStyle(
                  color: global.headerText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
