import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class MainHeader extends StatelessWidget {
  const MainHeader(this.headerText, {super.key});
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              headerText,
              textAlign: TextAlign.center,
              style: global.boldTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
