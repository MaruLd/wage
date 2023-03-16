// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import 'overview_row.dart';

class ProfileOverview extends StatefulWidget {
  const ProfileOverview({Key? key, required this.viewOverviewDetail})
      : super(key: key);
  final Function viewOverviewDetail;

  @override
  State<ProfileOverview> createState() => _ProfileOverviewState();
}

class _ProfileOverviewState extends State<ProfileOverview> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tổng quan',
            style: global.boldTextDarkStyle,
          ),
          TextButton(
            onPressed: () => widget.viewOverviewDetail(),
            child: Text(
              'Chi tiết',
              style: TextStyle(
                color: global.forgetButton,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ).px20(),
      OverviewRow()
    ]);
  }
}