import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/utils/navigation.dart';
import 'package:wage/presentation/pages/profile/components/sub_project_list_view/sub_project_list_view.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class ProjectProgress extends StatefulWidget {
  const ProjectProgress({Key? key}) : super(key: key);

  @override
  State<ProjectProgress> createState() => _ProjectProgressState();
}

class _ProjectProgressState extends State<ProjectProgress> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tiến trình các dự án',
            style: GoogleFonts.openSans(
              color: global.headerText,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          TextButton(
            onPressed: () => projectPageNavigation(context),
            child: Text(
              'Xem tất cả',
              style: TextStyle(
                color: global.forgetButton,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ).px20(),
      const SubProjectListView(),
    ]);
  }
}
