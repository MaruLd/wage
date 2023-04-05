// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/xp_card.dart';

import 'overview_row.dart';

// void _ProfileDetailPageNavigation(BuildContext context) {
//   Navigator.of(context, rootNavigator: true).push(
//     MaterialPageRoute(
//       builder: (_) => ProfileDetailPage(),
//     ),
//   );
// }

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tổng quan',
            style: GoogleFonts.montserrat(
              color: global.headerText,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          // TextButton(
          //   onPressed: () => _ProfileDetailPageNavigation(context),
          //   child: Text(
          //     'Chi tiết',
          //     style: TextStyle(
          //       color: global.forgetButton,
          //       fontWeight: FontWeight.w500,
          //       fontSize: 16.sp,
          //     ),
          //   ),
          // ),
        ],
      ).px20(),
      OverviewRow(),
    ]);
  }
}
