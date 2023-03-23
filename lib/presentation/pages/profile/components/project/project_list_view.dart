import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/project/project_item.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectListView extends ConsumerWidget {
  const ProjectListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
          return SizedBox(
            width: 380.w,
            height: 180.h,
            child: Scrollbar(
              radius: Radius.circular(60),
              thickness: 6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projectData.length,
                itemBuilder: (context, int index) {
                  return Container(
                    width: 130,
                    alignment: Alignment.center,
                    child:
                        ProjectItem(onTap: () {}, project: projectData[index])
                            .px20(),
                  );
                },
              ),
            ),
          );
        },
        error: (error, stackTrace) => Text('Server currently down'),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}
