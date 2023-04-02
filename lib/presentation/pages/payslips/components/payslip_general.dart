import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/number_formatter.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../widgets/card.dart';

class PayslipGeneral extends ConsumerWidget {
  const PayslipGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletsData = ref.watch(walletsDataProvider);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: global.background,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Từ ngày',
                  style: GoogleFonts.openSans(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  '10/10/2022',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ).px20(),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: global.background,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Đến ngày',
                  style: GoogleFonts.openSans(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  '10/10/2022',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ).px20(),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      // second row: point and xp
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(15, 48, 188, 150),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.coins, color: global.yellow, size: 20),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Point: 1000',
                  style: GoogleFonts.montserrat(
                    color: global.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(15, 48, 188, 151),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 65,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.hourglassHalf,
                    color: global.darkGreen, size: 18),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'XP: 1000',
                  style: GoogleFonts.montserrat(
                    color: global.darkGreen,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      // Total points
      Container(
        decoration: BoxDecoration(
          color: global.background,
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: global.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: FaIcon(FontAwesomeIcons.businessTime,
                        color: global.background, size: 23)
                    .centered(),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tổng point P1',
                    style: GoogleFonts.openSans(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Vị trí làm việc',
                    style: GoogleFonts.openSans(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 65,
                alignment: AlignmentDirectional.center,
                child: Text(
                  pointFormat(400, 0, 0),
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: global.background,
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: global.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: FaIcon(FontAwesomeIcons.fileCircleCheck,
                        color: global.background, size: 23)
                    .centered(),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tổng point P2',
                    style: GoogleFonts.openSans(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Năng lực',
                    style: GoogleFonts.openSans(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 65,
                alignment: AlignmentDirectional.center,
                child: Text(
                  pointFormat(40000, 0, 0),
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          color: global.background,
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: global.primary2,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: FaIcon(FontAwesomeIcons.userClock,
                        color: global.background, size: 23)
                    .centered(),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tổng point P3',
                    style: GoogleFonts.openSans(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Hiệu suất làm việc',
                    style: GoogleFonts.openSans(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 65,
                alignment: AlignmentDirectional.center,
                child: Text(
                  pointFormat(400000, 0, 0),
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
            Icon(Icons.keyboard_arrow_right,
                color: Colors.grey.withOpacity(0.5), size: 25),
          ],
        ),
      ),
    ]);
  }
}
