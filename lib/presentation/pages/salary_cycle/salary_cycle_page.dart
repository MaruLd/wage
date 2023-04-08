import 'package:flutter/material.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/main_header.dart';
import 'components/body.dart';

class SalaryCyclePage extends StatefulWidget {
  const SalaryCyclePage({super.key});

  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<SalaryCyclePage> createState() => _SalaryCyclePageState();
}

class _SalaryCyclePageState extends State<SalaryCyclePage> {
  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const MainHeader(),
          const SizedBox(
            height: 80,
          ),
          MainBody(
              child: Column(
            children: [SalaryCycleOverview()],
          ))
        ],
      ),
    );
  }
}
