import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Level/level_model.dart';
import '../../../../widgets/point_icon.dart';
import '../../../../widgets/xp_icon.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class ProjectXPItem extends ConsumerWidget {
  ProjectXPItem({Key? key, required this.project, this.onTap})
      : super(key: key);
  Level project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.leaf,
            color: HexColor(project.levelColor),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  project.levelName,
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Base point: ',
                      style: TextStyle(
                        color: global.smallText,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${pointFormat(project.basePoint)}',
                      style: GoogleFonts.montserrat(
                        color: global.yellow,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    PointIcon(size: 14, color: global.yellow),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '${pointFormat(project.xpNeeded)}',
            style: GoogleFonts.montserrat(
              color: global.primary2,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          XpIcon(size: 14, color: global.primary2),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
