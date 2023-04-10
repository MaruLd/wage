import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/pages/profile/components/sub_project_list_view/sub_project_item.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../widgets/loading_shimmer.dart';

class SubProjectListView extends ConsumerWidget {
  const SubProjectListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListFutureProvider);

    return projectList.when(
        data: (projectData) {
          return SizedBox(
            width: 380,
            height: 170,
            child: projectData.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: projectData.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        width: 130,
                        alignment: Alignment.center,
                        child: SubProjectItem(
                                onTap: () {}, project: projectData[index])
                            .px20(),
                      );
                    },
                  )
                : Text(
                    'Bạn chưa tham gia dự án nào',
                    style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ).centered(),
          );
        },
        error: (error, stackTrace) => LoadingShimmer(
            height: 80.0,
            width: 380.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => LoadingShimmer(
            height: 80.0,
            width: 380.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
