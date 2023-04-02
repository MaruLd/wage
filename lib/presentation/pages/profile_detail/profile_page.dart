import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_page_avatar.dart';

import '../../widgets/sub_header.dart';
import 'components/profile_detail/profile_detail.dart';

class ProfileDetailPage extends StatefulWidget {
  static String get routeName => 'profile_detail';
  static String get routeLocation => '/profile_detail';

  @override
  State<ProfileDetailPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileDetailPage> {
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
                  children: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Avatar(),
                      ProfileOverviewDetail(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
