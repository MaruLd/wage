import 'package:flutter/material.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/sub_page_avatar.dart';
import 'components/profile_edit_button.dart';
import 'components/project_row.dart';
import 'components/profile_overview.dart';

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
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        children: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  'HỒ SƠ',
                  style: global.boldTextStyle,
                ),
              ),
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
                        EditProfile(),
                        const SizedBox(
                          height: 10,
                        ),
                        const ProfileOverview(),
                        const SizedBox(
                          height: 20,
                        ),
                        const ProjectProgress(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
