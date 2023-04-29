import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class PointIcon extends StatelessWidget {
  const PointIcon({Key? key, required this.size, required this.color})
      : super(key: key);
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 6),
        FaIcon(FontAwesomeIcons.coins, size: size, color: color),
      ],
    );
  }
}
