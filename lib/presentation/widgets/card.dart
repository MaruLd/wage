import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          colors: [Color(0xFF014131), Color.fromARGB(255, 2, 130, 106)],
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
          child,
          Container(
            width: 140,
            height: 140,
            child: Image.asset(
              'assets/images/PointCardBackground.png',
            ).offset(offset: Offset(7, 5)),
          ),
        ],
      ),
    );
  }
}
