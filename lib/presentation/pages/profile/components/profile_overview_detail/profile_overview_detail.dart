// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/profile/components/project/project_carousel.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProfileOverviewDetail extends StatefulWidget {
  const ProfileOverviewDetail({Key? key, required this.viewProjects})
      : super(key: key);
  final Function viewProjects;

  @override
  State<ProfileOverviewDetail> createState() => _ProfileOverviewDetailState();
}

class _ProfileOverviewDetailState extends State<ProfileOverviewDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dự án tham gia',
            style: global.boldTextDarkStyle,
          ),
          TextButton(
            onPressed: () => widget.viewProjects(),
            child: Text(
              'Xem tất cả',
              style: TextStyle(
                color: global.forgetButton,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ).px20(),
      ProjectCarousel(),
    ]);
  }
}