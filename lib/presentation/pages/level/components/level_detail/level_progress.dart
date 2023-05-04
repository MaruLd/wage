import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../widgets/xp_icon.dart';

class LevelProgress extends ConsumerWidget {
  const LevelProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nextLevel = ref.watch(nextLevelFutureProvider);
    final walletData = ref.watch(walletsFutureProvider);

    double? userXp = walletData.whenOrNull(data: (data) => data.totalXP);
    double? nextLevelXp = nextLevel.whenOrNull(data: (data) => data.xpNeeded);
    double xpNeededToLevelUp =
        (nextLevelXp != null && userXp != null) ? nextLevelXp - userXp : 0;

    return SizedBox(
      width: 390,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 180,
            height: 40,
            decoration: BoxDecoration(
              color: global.primary2,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.elliptical(50, 50),
                  bottomLeft: Radius.elliptical(50, 50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hiện có: ${pointFormat(userXp ?? 0)}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: global.background,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )),
                XpIcon(size: 14, color: global.background),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(25, 0, 178, 113),
              borderRadius: new BorderRadius.only(
                  topRight: Radius.elliptical(50, 50),
                  bottomRight: Radius.elliptical(50, 50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Level kế: ${pointFormat(xpNeededToLevelUp)}',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: global.primary2,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                XpIcon(size: 14, color: global.primary2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
