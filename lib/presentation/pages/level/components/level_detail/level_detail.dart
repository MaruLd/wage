// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../projectxp/project_xp_list_view.dart';

class LevelsDetail extends StatefulWidget {
  const LevelsDetail({Key? key, required this.viewProjects}) : super(key: key);
  final Function viewProjects;

  @override
  State<LevelsDetail> createState() => _LevelsDetailState();
}

class _LevelsDetailState extends State<LevelsDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('KINH NGHIỆM',
              style: TextStyle(
                color: global.normalText,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              )),
          TextButton(
            onPressed: () => widget.viewProjects(),
            child: Text(
              ' ',
              style: TextStyle(
                color: global.forgetButton,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ).px20(),
      // ProjectXPListView(),
    ]);
  }
}
