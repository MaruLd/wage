import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/refresher.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

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
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SubHeader('Level'),
          const SizedBox(
            height: 120,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: global.background,
              ),
              child: Column(children: [
                LevelBody(),
                LevelsDetail(),
              ]).offset(offset: Offset(0, -125)))
        ],
      ),
    );
  }
}
