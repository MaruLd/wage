// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import 'overview_row.dart';

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
            style: GoogleFonts.openSans(
              color: global.headerText,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ],
      ).px20(),
      const SizedBox(
        height: 10,
      ),
      OverviewRow(),
    ]);
  }
}
