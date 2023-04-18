import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/pages/project/components/project_list_view/project_item.dart';
import 'package:wage/presentation/pages/voucher/components/voucher_list_view/voucher_item.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/providers/search_provider.dart';
import '../../../../../domain/Project/project_model.dart';

class ProjectListView extends ConsumerWidget {
  const ProjectListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectProvider = ref.watch(projectListFutureProvider);
    final List<Project> projectList =
        ref.watch(searchProjectProvider).projectList;
    return projectProvider.when(
        data: (data) {
          return Container(
            width: 340,
            constraints: const BoxConstraints(
              minHeight: 300,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: projectList.length,
              itemBuilder: (context, int index) {
                return ProjectItem(
                  project: projectList[index],
                );
              },
            ),
          );
        },
        error: (error, stackTrace) {
          print(error);
          return const ShimmerList(
              height: 126.0,
              width: 325.0,
              row: 3,
              color: Color.fromARGB(118, 2, 193, 123),
              baseColor: Color.fromARGB(118, 0, 100, 63));
        },
        loading: () => const ShimmerList(
            height: 126.0,
            width: 325.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
