import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/project/project_detail.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectItem extends StatelessWidget {
  ProjectItem({Key? key, required this.project, this.onTap}) : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color percentIndicatorColor = Colors.grey;
    double switchPercent(String percent) {
      switch (percent) {
        case 'created':
          return 0.25;
        case 'started':
          percentIndicatorColor = Color.fromARGB(255, 244, 248, 140);
          return 0.50;
        case 'ended':
          percentIndicatorColor = Color.fromARGB(255, 133, 255, 155);
          return 1.0;
        default:
          return 0;
      }
    }

    Color switchPercentColor(String percent) {
      switch (percent) {
        case 'created':
          return Color.fromARGB(255, 255, 93, 158);
        case 'started':
          return Color.fromARGB(255, 92, 72, 204);
        case 'ended':
          return Color.fromARGB(255, 42, 143, 59);
        default:
          return Colors.grey;
      }
    }

    String translateStatus(String percent) {
      switch (percent) {
        case 'created':
          return 'Khởi tạo';
        case 'started':
          return 'Hiện thực';
        case 'ended':
          return 'Hoàn thành';
        default:
          return '';
      }
    }

    ;
    String percentToIndicator =
        "${(switchPercent(project.projectStatus) * 100).toInt()}%";

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProjectDetail(project: project)),
      ),
      child: Column(children: [
        const SizedBox(
          height: 12,
        ),
        CircularPercentIndicator(
          radius: 40.0,
          lineWidth: 7.0,
          percent: switchPercent(project.projectStatus),
          center: new Text(
            percentToIndicator,
            style: TextStyle(
              color: global.normalText,
              fontFamily: global.numberFont,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
          progressColor: switchPercentColor(project.projectStatus),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          project.projectShortName ?? 'Project',
          style: TextStyle(
            color: global.normalText,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          translateStatus(project.projectStatus),
          style: TextStyle(
            color: switchPercentColor(project.projectStatus),
            fontFamily: global.headerFont,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ]),
    );
  }
}
