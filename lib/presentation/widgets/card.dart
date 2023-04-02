import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.children}) : super(key: key);
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 130,
          width: 340,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Color.fromARGB(94, 0, 0, 0),
                offset: Offset(0, 5),
              )
            ],
            gradient: LinearGradient(
              colors: [Color(0xFF014131), Color(0xD2026E5A)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, -1),
              end: AlignmentDirectional(0, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              children,
              Image.asset(
                'assets/images/PointCardBackground.png',
              ).offset(offset: Offset(8, 2)),
            ],
          ),
        ),
      ],
    );
  }
}
