import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/pages/profile_overview/components/project_list_view/project_item.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../widgets/loading_shimmer.dart';

class ProjectListView extends ConsumerWidget {
  const ProjectListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListFutureProvider);

    return projectList.when(
        data: (projectData) {
          return SizedBox(
            width: 380,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: projectData.length,
              itemBuilder: (context, int index) {
                return Container(
                  width: 130,
                  alignment: Alignment.center,
                  child: ProjectItem(onTap: () {}, project: projectData[index])
                      .px20(),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => LoadingShimmer(
            height: 80.0,
            width: 380.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () =>
            CircularProgressIndicator(color: global.primary).centered());
  }
}
