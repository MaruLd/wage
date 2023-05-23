import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../domain/Project Detail/project_detail_model.dart';
import '../../../../../domain/Project/project_model.dart';
import '../../../../widgets/loading_shimmer.dart';
import '../../../../widgets/shimmer_list.dart';

class ProjectDetail extends ConsumerWidget {
  const ProjectDetail(this.project, {super.key});
  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectProvider = ref.watch(projectFutureProvider(project.projectId));
    return Container(
      width: 320,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 10),
        Container(
          width: 320,
          child: Text(project.projectName,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                color: global.headerText,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text('Quản lý: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  color: global.smallText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            projectProvider.when(
              data: (data) {
                ProjectMember manager = data.members!.firstWhere(
                    (member) => member.role == ProjectMemberRoleEnum.manager);
                return Text(manager.member.fullName ?? '',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(
                      color: global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ));
              },
              error: (error, stackTrace) => LoadingShimmer(
                height: 18.0,
                width: 100.0,
                color: Color.fromARGB(118, 2, 193, 123),
              ),
              loading: () => LoadingShimmer(
                height: 18.0,
                width: 100.0,
                color: Color.fromARGB(118, 2, 193, 123),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text('Mô tả dự án: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  color: global.smallText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
          ],
        ),
        Container(
          width: 320,
          child: Text(project.projectLongDescription ?? '',
              style: GoogleFonts.openSans(
                color: global.normalText,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text('Các thành viên: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  color: global.smallText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
          ],
        ),
        projectProvider.when(
            data: (data) {
              return Container(
                width: 320,
                constraints: const BoxConstraints(
                  minHeight: 300,
                ),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: data.members?.length,
                  itemBuilder: (context, int index) {
                    ProjectMember member = data.members![index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(member.member.fullName ?? '',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.openSans(
                              color: global.normalText,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        Text(member.member.emailAddress ?? '',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.openSans(
                              color: global.smallText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                        Text(member.major,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.openSans(
                              color: global.smallText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ))
                      ],
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) {
              debugPrint(error.toString());
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
                baseColor: Color.fromARGB(118, 0, 100, 63))),
      ]),
    );
  }
}
