import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_page_avatar.dart';

import '../../widgets/sub_header.dart';

class ProjectsPage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  bool overview = true;
  bool overviewDetail = false;
  bool projectsDetail = false;
  viewProjects() {
    setState(() {
      overviewDetail = !overviewDetail;
      projectsDetail = !projectsDetail;
    });
  }

  viewOverviewDetail() {
    setState(() {
      overview = !overview;
      overviewDetail = !overviewDetail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SubHeader('THÀNH TÍCH'),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: MainBody(
                  child: Column(
                    children: [
                      Avatar(),
                    ],
                  ).offset(offset: Offset(0, -50)),
                ))
          ],
        ),
      ),
    );
  }
}
