import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/level/components/projectxp/project_xp_item.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class LevelProgress extends ConsumerWidget {
  const LevelProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
          return SizedBox(
            width: 380,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 160.0,
                  child: Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(25, 0, 178, 113),
                      borderRadius: new BorderRadius.only(
                          topRight: Radius.elliptical(50, 50),
                          bottomRight: Radius.elliptical(50, 50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(34, 16, 20, 16),
                      child: Text('Level kế: 1,234 exp',
                          style: TextStyle(
                            color: global.primary,
                            fontFamily: global.headerFont,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          )),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
                    decoration: BoxDecoration(
                      color: global.primary2,
                      borderRadius:
                          new BorderRadius.all(Radius.elliptical(50, 50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                      child: Text('Hiện có: 1,000 exp',
                          style: TextStyle(
                            color: global.background,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Text('Server currently down'),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}
