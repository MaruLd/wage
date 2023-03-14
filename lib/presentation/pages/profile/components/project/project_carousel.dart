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

class ProjectCarousel extends ConsumerWidget {
  const ProjectCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListDatasProvider);

    return projectList.when(
        data: (projectData) {
          return SizedBox(
            width: 360.w,
            height: 180.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 2,
                childAspectRatio: 1.45,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: projectData.length,
              itemBuilder: (context, int index) {
                return ProjectItem(onTap: () {}, project: projectData[index]);
              },
            ),
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => CircularProgressIndicator(color: global.primary).centered());
  }
}
