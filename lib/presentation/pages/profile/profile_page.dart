import 'package:flutter/material.dart';
import 'package:wage/presentation/pages/profile/components/profile_body.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/sub_header.dart';
import '../../widgets/sub_page_avatar.dart';
import 'components/project_row.dart';
import 'components/self_overview.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SubHeader(headerText: 'HỒ SƠ'),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: MainBody(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Avatar(),
                      ProfileBody(),
                      const SizedBox(
                        height: 12,
                      ),
                      const ProfileOverview(),
                      const SizedBox(
                        height: 12,
                      ),
                      const ProjectProgress(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
