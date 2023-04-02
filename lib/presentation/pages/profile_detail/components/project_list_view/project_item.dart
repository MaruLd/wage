import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;


class ProjectItem extends StatelessWidget {
  ProjectItem({Key? key, required this.project, this.onTap}) : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color percentIndicatorColor = Colors.grey;
    double switchPercent(ProjectStatusEnum status) {
      switch (status) {
        case ProjectStatusEnum.created:
          return 0.25;
        case ProjectStatusEnum.started:
          percentIndicatorColor = Color.fromARGB(255, 244, 248, 140);
          return 0.50;
        case ProjectStatusEnum.ended:
          percentIndicatorColor = Color.fromARGB(255, 133, 255, 155);
          return 1.0;
        default:
          return 0;
      }
    }

    Color switchPercentColor(ProjectStatusEnum status) {
      switch (status) {
        case ProjectStatusEnum.created:
          return Color.fromARGB(255, 255, 93, 158);
        case ProjectStatusEnum.started:
          return Color.fromARGB(255, 92, 72, 204);
        case ProjectStatusEnum.ended:
          return Color.fromARGB(255, 42, 143, 59);
        default:
          return Colors.grey;
      }
    }

    String translateStatus(ProjectStatusEnum status) {
      switch (status) {
        case ProjectStatusEnum.created:
          return 'Khởi tạo';
        case ProjectStatusEnum.started:
          return 'Hiện thực';
        case ProjectStatusEnum.ended:
          return 'Hoàn thành';
        default:
          return '';
      }
    }

    ;
    String percentToIndicator =
        "${(switchPercent(project.projectStatus) * 100).toInt()}%";

    return GestureDetector(
      onTap: () {},
      child: Column(children: [
        const SizedBox(
          height: 12,
        ),
        CircularPercentIndicator(
          radius: 40.0,
          lineWidth: 7.0,
          percent: switchPercent(project.projectStatus),
          animationDuration: 800,
          animation: true,
          center: new Text(
            percentToIndicator,
            style: TextStyle(
              color: global.normalText,
              fontFamily: global.numberFont,
              fontWeight: FontWeight.w500,
              fontSize: 20,
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
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          translateStatus(project.projectStatus),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: switchPercentColor(project.projectStatus),
            fontFamily: global.headerFont,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ]),
    );
  }
}
