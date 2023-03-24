import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProfileHeader(
              backFunctions: backFunctions,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
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
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Column(
                  children: [SalaryCycleOverview()],
                ).offset(offset: Offset(0, -80)))
          ],
        ).safeArea(),
      ),
    );
  }
}
