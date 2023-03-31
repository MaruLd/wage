import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';

import 'components/body.dart';
import 'components/profile_overview/profile_overview.dart';
import 'components/profile_overview_detail/profile_overview_detail.dart';

class ProfilePage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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

  backFunctions(BuildContext context) {
    Navigator.pop(context);
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
            ProfileHeader(
              backFunctions: backFunctions,
              overview: overview,
              overviewDetail: overviewDetail,
              projectsDetail: projectsDetail,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: MainBody(
                  children: Column(
                    children: [
                      Profile(),
                      ProfileOverviewDetail(),
                    ],
                  ).offset(offset: Offset(0, -50)),
                ))
          ],
        ),
      ),
    );
  }
}
