import 'package:flutter/material.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'components/body.dart';

class ProfilePage extends StatelessWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  Widget build(BuildContext context) {
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
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
