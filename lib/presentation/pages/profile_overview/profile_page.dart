import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';

import '../../widgets/sub_page_avatar.dart';
import '../../widgets/sub_header.dart';
import 'components/profile_overview.dart';

class ProfilePage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SubHeader('HỒ SƠ'),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: MainBody(
                  children: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Avatar(),
                      ProfileOverview(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
