import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';

class ProjectProgress extends StatelessWidget {
  const ProjectProgress({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    Color percentIndicatorColor = Colors.grey;
    String percentToIndicator =
        "${(projectDateToPercent(project.createdAt) * 100).toInt()}%";

    return CircularPercentIndicator(
      circularStrokeCap: CircularStrokeCap.round,
      radius: 42.0,
      lineWidth: 12.0,
      percent: projectDateToPercent(project.createdAt),
      animationDuration: 500,
      reverse: true,
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
      progressColor:
          projectStatusColor(projectDateToPercent(project.createdAt)),
    );
  }
}
