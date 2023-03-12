import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/profile_detail.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectItem extends StatelessWidget {
  ProjectItem({Key? key, required this.project, this.onTap}) : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    print(project);
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProjectDetail(project: project)),
      ),
      child: Column(children: [
        CircularPercentIndicator(
          radius: 40.0,
          lineWidth: 7.0,
          percent: 0.5,
          center: new Text("50%"),
          progressColor: Colors.green,
        ),
        Text(
          project.projectName,
          style: TextStyle(
            color: global.normalText,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),
        ).p12(),
        Text(
          project.projectStatus ?? 'Not started',
          style: TextStyle(
            color: global.normalText,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ).p4(),
      ]),
    );
  }
}
