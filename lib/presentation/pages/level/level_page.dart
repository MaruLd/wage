import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'components/body.dart';
import 'components/level_detail/level_detail.dart';

class LevelPage extends StatefulWidget {
  const LevelPage({super.key});
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LevelHeader(),
            const SizedBox(
              height: 100,
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
                      LevelsDetail(),
                    ]).offset(offset: Offset(0, -120))))
          ],
        ).safeArea(),
      ),
    );
  }
}
