import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/profile/components/project/project_item.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectXPListView extends ConsumerWidget {
  const ProjectXPListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
          return SingleChildScrollView(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: projectData.length,
              itemBuilder: (context, int index) {
                return Container(
                  width: 130,
                  alignment: Alignment.center,
                  child:
                      ProjectXPItem(onTap: () {}, project: projectData[index]),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => Text('Server currently down'),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}
