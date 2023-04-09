import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class SettingRow extends StatelessWidget {
  const SettingRow({
    Key? key,
    required this.name,
    required this.icon,
    required this.navigate,
  }) : super(key: key);
  final String name;
  final Widget icon;
  final VoidCallback navigate;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: navigate,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(27, 48, 188, 151),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              height: 45,
              width: 45,
              child: icon.centered(),
            ),
            const SizedBox(width: 25),
            Text(
              name,
              style: GoogleFonts.openSans(
                color: global.normalText,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ]),
          FaIcon(FontAwesomeIcons.chevronRight,
              color: Colors.grey.withOpacity(0.7), size: 20),
        ],
      ),
    );
  }
}
