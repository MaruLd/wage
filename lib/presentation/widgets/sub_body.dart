import 'package:flutter/material.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class SubBody extends StatelessWidget {
  const SubBody({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: global.background,
        ),
        child: child);
  }
}
