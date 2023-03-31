import 'package:flutter/material.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class MainBody extends StatelessWidget {
  const MainBody({Key? key, required this.children}) : super(key: key);
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: global.background,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x34000000),
              offset: Offset(0, -2),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: children);
  }
}
