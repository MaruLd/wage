import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/level/components/projectxp/project_xp_item.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class LevelCircleProgress extends ConsumerWidget {
  const LevelCircleProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
          return Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: global.primary2),
            child: CircularPercentIndicator(
              percent: 0.5,
              radius: 100,
              lineWidth: 35,
              reverse: true,
              animationDuration: 800,
              animation: true,
              progressColor: global.background,
              backgroundColor: Color.fromARGB(66, 255, 255, 255),
              circularStrokeCap: CircularStrokeCap.round,
              center: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: global.militaryGreen),
                width: 130,
                height: 130,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Level 4.svg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fitHeight,
                      ),
                      Text('Leader',
                          style: TextStyle(
                            color: global.background,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ))
                    ]),
              ),
            ).p24(),
          );
        },
        error: (error, stackTrace) => Text('Server currently down'),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}