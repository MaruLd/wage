import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/pages/project/components/project_list_view/project_progress.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class ProjectItem extends StatelessWidget {
  ProjectItem({Key? key, required this.project}) : super(key: key);
  final Project project;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      decoration: BoxDecoration(
        color: Color.fromARGB(35, 246, 181, 69),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 18,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '[${project.projectShortName}] ',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.openSans(
                        color: global.primary2,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      width: 210,
                      child: Text(
                        project.projectName,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.openSans(
                          color: global.normalText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(project.createdAt),
                  style: GoogleFonts.montserrat(
                    color: global.smallText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Trạng thái: ',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                color: global.normalText,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              projectStatusTransform(project.projectStatus),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                color: projectStatusColor(
                                    projectDateToPercent(project.createdAt)),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          constraints: new BoxConstraints(
                            maxHeight: 180,
                          ),
                          child: Text(
                            'Mô tả: ${project.projectShortDescription} ',
                            maxLines: 4,
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.openSans(
                              color: global.normalText,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ProjectProgress(
                      project: project,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       'Xem thêm ',
                //       style: GoogleFonts.openSans(
                //         color: global.yellow,
                //         fontWeight: FontWeight.w500,
                //         fontSize: 16,
                //       ),
                //     ),
                //     FaIcon(FontAwesomeIcons.arrowRight,
                //         size: 16, color: global.yellow),
                //     const SizedBox(
                //       width: 12,
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    ).py8();
  }
}
