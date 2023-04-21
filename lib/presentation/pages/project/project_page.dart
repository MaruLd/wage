import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';

import '../../widgets/main_body.dart';
import '../../widgets/refresher.dart';
import '../../widgets/sub_header.dart';
import 'components/project_list_view/project_list_view.dart';
import 'components/project_search_bar.dart';
import 'components/project_search_card.dart';

class ProjectPage extends ConsumerWidget {
  const ProjectPage({Key? key}) : super(key: key);

  static String get routeName => 'project';
  static String get routeLocation => '/project';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalproject = ref
        .watch(projectListFutureProvider)
        .whenOrNull(data: (data) => data.length);

    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SubHeader(headerText: 'Các dự án'),
          const SizedBox(
            height: 90,
          ),
          MainBody(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ProjectSearchCard(
                    searchBar: ProjectSearchBar(),
                    totalProject: totalproject ?? 0),
                const SizedBox(height: 20),
                ProjectListView(),
              ]).offset(offset: Offset(0, -12)))
        ],
      ),
    );
  }
}
