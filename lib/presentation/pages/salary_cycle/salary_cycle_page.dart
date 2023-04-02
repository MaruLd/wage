import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/main_header.dart';
import 'components/salary_cycle_overview/salary_cycle_overview.dart';

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
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        children: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MainHeader(),
            const SizedBox(
              height: 80,
            ),
            MainBody(
                children: Column(
              children: [SalaryCycleOverview()],
            ))
          ],
        ),
      ),
    );
  }
}
