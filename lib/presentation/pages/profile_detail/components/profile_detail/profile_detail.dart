// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/xp_card.dart';

import '../project_list_view/project_list_view.dart';

class ProfileOverviewDetail extends StatefulWidget {
  const ProfileOverviewDetail({Key? key}) : super(key: key);

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
            onPressed: () => {},
            child: Text(
              'Xem tất cả',
              style: TextStyle(
                color: global.forgetButton,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ).px20(),
      ProjectListView(),
      XpCard()
    ]);
  }
}