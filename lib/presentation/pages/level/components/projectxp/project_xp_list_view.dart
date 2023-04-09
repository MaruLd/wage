import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/level/components/projectxp/project_xp_item.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/shimmer_list.dart';

class ProjectXPListView extends ConsumerWidget {
  const ProjectXPListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListFutureProvider);

    return projectList.when(
        data: (projectData) {
          return Container(
            width: 340,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              itemCount: projectData.length,
              itemBuilder: (context, int index) {
                return Container(
                  width: 300,
                  child: ProjectXPItem(
                    onTap: () {},
                    project: projectData[index],
                  ),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => ShimmerList(
            height: 30.0,
            width: 320.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => ShimmerList(
            height: 30.0,
            width: 320.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
