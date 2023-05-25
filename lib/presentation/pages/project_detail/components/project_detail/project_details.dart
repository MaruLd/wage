import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../domain/Project Detail/project_detail_model.dart';
import '../../../../../domain/Project/project_model.dart';
import '../../../../widgets/loading_shimmer.dart';
import '../../../../widgets/shimmer_list.dart';

class ProjectDetail extends ConsumerStatefulWidget {
  const ProjectDetail(this.project, {super.key});
  final Project project;
  @override
  ConsumerState<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends ConsumerState<ProjectDetail> {
  bool showDescription = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void showMore() {
      setState(
        () {
          showDescription = !showDescription;
        },
      );
    }

    final projectProvider =
        ref.watch(projectFutureProvider(widget.project.projectId));
    return Container(
      width: 330,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 10),
        Container(
          width: 320,
          child: Text(widget.project.projectName,
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
        projectProvider.when(
          data: (data) {
            ProjectMember manager = data.members!.firstWhere(
                (member) => member.role == ProjectMemberRoleEnum.manager);
            return Container(
              decoration: BoxDecoration(
                  color: global.background,
                  border: BorderDirectional(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FaIcon(FontAwesomeIcons.solidUser,
                                color: global.primary2, size: 14),
                            const SizedBox(width: 15),
                            Text(
                              manager.member.fullName ?? '',
                              style: GoogleFonts.openSans(
                                color: global.normalText,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                      Row(
                        children: [
                          const SizedBox(
                            width: 28,
                          ),
                          Text(
                            manager.member.emailAddress ?? '',
                            style: GoogleFonts.openSans(
                              color: global.smallText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => LoadingShimmer(
            height: 45.0,
            width: 320.0,
            color: Color.fromARGB(118, 2, 193, 123),
          ),
          loading: () => LoadingShimmer(
            height: 45.0,
            width: 320.0,
            color: Color.fromARGB(118, 2, 193, 123),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text('Mô tả dự án: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                )),
          ],
        ),
        Visibility(
          child: Container(
            width: 320,
            child: Text(widget.project.projectShortDescription ?? '',
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )),
          ),
          visible: !showDescription,
        ),
        Visibility(
          child: Container(
            width: 320,
            child: Text(widget.project.projectLongDescription ?? '',
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )),
          ),
          visible: showDescription,
        ),
        Visibility(
          child: Row(
            children: [
              MaterialButton(
                padding: EdgeInsets.zero,
                height: 17,
                onPressed: () => showMore(),
                child: Text('Đọc thêm',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: global.medium,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )),
              ),
            ],
          ),
          visible: widget.project.projectLongDescription ==
                  widget.project.projectShortDescription
              ? false
              : !showDescription,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text('Thành viên: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w700,
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
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  child: Text(member.member.fullName ?? '',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.openSans(
                                        color: global.headerText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ),
                                Container(
                                  width: 220,
                                  child: Text(member.member.emailAddress ?? '',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.openSans(
                                        color: global.smallText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      )),
                                ),
                              ],
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                color: global.primary2.withOpacity(0.1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Text(member.major,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    color: global.primary2,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  )).p4(),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) {
              debugPrint(error.toString());
              return const ShimmerList(
                  height: 45.0,
                  width: 320.0,
                  row: 3,
                  color: Color.fromARGB(118, 2, 193, 123),
                  baseColor: Color.fromARGB(118, 0, 100, 63));
            },
            loading: () => const ShimmerList(
                height: 45.0,
                width: 320.0,
                row: 3,
                color: Color.fromARGB(118, 2, 193, 123),
                baseColor: Color.fromARGB(118, 0, 100, 63))),
      ]),
    );
  }
}
