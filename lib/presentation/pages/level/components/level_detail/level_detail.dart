import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../projectxp/project_xp_list_view.dart';

class LevelsDetail extends StatelessWidget {
  var date = DateTime.now();

  LevelsDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('KINH NGHIỆM',
              style: TextStyle(
                color: global.headerText,
                fontFamily: global.headerFont,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              )),
        ],
      ),
      ProjectXPListView(),
    ]);
  }
}
