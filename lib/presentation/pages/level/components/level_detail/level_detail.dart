import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
      Container(
        width: 320,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Level',
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                )),
            const SizedBox(
              width: 20,
            ),
            Text('XP cần có',
                style: GoogleFonts.openSans(
                  color: global.normalText,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                )),
          ],
        ),
      ),
      ProjectXPListView(),
    ]);
  }
}
