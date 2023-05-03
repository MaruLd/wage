import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

import '../../../../widgets/point_card.dart';
import '../../../../widgets/refresher.dart';
import 'components/point_field.dart';

class PointInputPage extends StatelessWidget {
  const PointInputPage({super.key, required this.toMemberId});
  final String toMemberId;
  @override
  Widget build(BuildContext context) {
    return Refresher(
        child: Column(children: [
      const SubHeader(headerText: 'CHUYỂN POINT'),
      const SizedBox(
        height: 70,
      ),
      MainBody(
          child: Column(
        children: [
          PointCard(),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            child: Text("Nhập số point bạn muốn chuyển",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: global.primary2,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                )),
          ),
          PointField(toMemberId: toMemberId),
          const SizedBox(
            height: 70,
          ),
        ],
      )),
    ]));
  }
}
