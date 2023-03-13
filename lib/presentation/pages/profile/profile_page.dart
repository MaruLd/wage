import 'package:flutter/material.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'components/body.dart';

class ProfilePage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    bool overview = false;
    bool overviewDetail = true;
    bool projectsDetail = false;
    viewProjectsDetail() {
      setState(() {
        overviewDetail = !overviewDetail;
      });
    }

    return Scaffold(
      backgroundColor: global.primary2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomePageHeader(),
            const SizedBox(
              height: 40,
            ),
            Visibility(
                visible: overviewDetail,
                child: ProfileBody(notifyParent: viewProjectsDetail)),
          ],
        ),
      ),
    );
  }
}
