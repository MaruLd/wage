import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/level/components/projectxp/project_xp_item.dart';
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
                  height: 300,
                  alignment: Alignment.center,
                  child: ProjectXPItem(
                    onTap: () {},
                    project: projectData[index],
                  ),
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
