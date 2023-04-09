import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key? key,
    required this.name,
    required this.icon,
    required this.data,
  }) : super(key: key);
  final String name;
  final String data;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(50, 158, 158, 158), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(16, 48, 188, 151),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          height: 45,
          width: 45,
          child: icon.centered(),
        ),
        const SizedBox(width: 25),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.openSans(
                color: global.smallText,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              data,
              style: GoogleFonts.montserrat(
                color: global.normalText,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ]).p8(),
    );
  }
}
