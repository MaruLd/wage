import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'components/body.dart';
import 'components/profile_overview_detail/profile_overview_detail.dart';

class WalletPage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
            WalletHeader(
              backFunctions: backFunctions,
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: global.background,
                    ),
                    child: Column(children: [
                      Profile(),
                      ProfileOverviewDetail(viewProjects: viewProjects),
                    ]).offset(offset: Offset(0, -115))))
          ],
        ).safeArea(),
      ),
    );
  }
}
