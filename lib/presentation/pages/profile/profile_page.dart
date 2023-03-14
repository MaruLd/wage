import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

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
    if (overview) {
      Navigator.pop(context);
    }
    if (overviewDetail) {
      print('overviewDetail' + overviewDetail.toString());
      viewOverviewDetail();
    }
    if (projectsDetail) {
      print('viewProjectsDetail' + projectsDetail.toString());
      viewProjects();
    }
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
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: global.background,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x34000000),
                          offset: Offset(0, -2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Profile(),
                        Visibility(
                            visible: overviewDetail,
                            child: ProfileOverviewDetail(
                              viewProjects: viewProjects,
                            )),
                        Visibility(
                            visible: overview,
                            child: ProfileOverview(
                              viewOverviewDetail: viewOverviewDetail,
                            )),
                      ],
                    ).offset(offset: Offset(0, -50))))
          ],
        ).safeArea(),
      ),
    );
  }
}
