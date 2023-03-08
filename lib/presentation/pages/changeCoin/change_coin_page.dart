import 'package:flutter/material.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'components/body.dart';

class ChangeCoinPage extends StatelessWidget {
  static String get routeName => 'changeCoin';
  static String get routeLocation => '/changeCoin';

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
            Profile(),
            ChangeCoinBody(),
          ],
        ),
      ),
    );
  }
}
