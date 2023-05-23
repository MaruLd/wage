import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Project/project_model.dart';
import '../../../../widgets/loading_shimmer.dart';

class LevelCircleProgress extends ConsumerWidget {
  const LevelCircleProgress(this.project, {Key? key}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double projectPercent = 0.0;
    if (project.startedAt != null && project.endedAt != null) {
      projectPercent =
          projectDateToPercent(project.startedAt!, project.endedAt!);
    }
    String percentToIndicator = "${(projectPercent * 100).toInt()}%";

    return Container(
        width: 250,
        height: 250,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: global.primary2),
        child: CircularPercentIndicator(
          percent: projectPercent,
          radius: 100,
          lineWidth: 35,
          reverse: true,
          animationDuration: 800,
          animation: true,
          progressColor: global.background,
          backgroundColor: Color.fromARGB(66, 255, 255, 255),
          circularStrokeCap: CircularStrokeCap.round,
          center: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: global.primary2),
            width: 130,
            height: 130,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(percentToIndicator,
                  style: TextStyle(
                    color: global.background,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  )),
              const SizedBox(
                height: 8,
              ),
              Text(projectStatusTransform(project.projectStatus),
                  style: TextStyle(
                    color: global.background,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ))
            ]),
          ),
        ));
  }
}
