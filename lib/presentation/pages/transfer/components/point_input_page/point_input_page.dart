import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

import 'components/point_field.dart';

class PointInputPage extends StatelessWidget {
  const PointInputPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: global.primary2,
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const SubHeader(headerText: 'CHUYỂN POINT'),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 680,
            child: MainBody(
                child: Column(
              children: [
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
                const SizedBox(
                  height: 20,
                ),
                PointField(),
              ],
            ).offset(offset: Offset(0, 70))),
          )
        ]));
  }
}
