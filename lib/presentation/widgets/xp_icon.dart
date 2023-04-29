import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class XpIcon extends StatelessWidget {
  const XpIcon({Key? key, required this.size, required this.color})
      : super(key: key);
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 6),
        FaIcon(FontAwesomeIcons.solidPaperPlane, size: size, color: color),
      ],
    );
  }
}
