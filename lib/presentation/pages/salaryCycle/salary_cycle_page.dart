import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import 'components/body.dart';
import 'components/salary_cycle_overview/salary_cycle_overview.dart';

class SalaryCyclePage extends StatefulWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/profile';

  @override
  State<SalaryCyclePage> createState() => _SalaryCyclePageState();
}

class _SalaryCyclePageState extends State<SalaryCyclePage> {
  backFunctions(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
        children: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 20,
            ),
            ProfileHeader(
              backFunctions: backFunctions,
            ),
            const SizedBox(
              height: 80,
            ),
            MainBody(
                children: Column(
              children: [SalaryCycleOverview()],
            ).offset(offset: Offset(0, -80)))
          ],
        ),
      ),
    );
  }
}
