import 'package:flutter/material.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';

import '../../domain/Payslip/payslip_model.dart';
import '../../presentation/pages/navigation/navigation_bar.dart';
import '../../presentation/pages/payslip/payslip_page.dart';
import '../../presentation/pages/payslip_detail/payslip_detail_page.dart';
import '../../presentation/pages/profile_overview/profile_page.dart';

void salaryCyclePageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 3);
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => SalaryCyclePage()),
  // );
}

void reportPageNavigation(BuildContext context) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => SalaryCyclePage()),
  // );
}

void payslipPageNavigation(BuildContext context, SalaryCycle salaryCycle) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PayslipPage(
        salaryCycle: salaryCycle,
      ),
    ),
  );
}

void payslipDetailPageNavigation(
    BuildContext context, SalaryCycle salaryCycle, Payslip payslip) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PayslipDetailPage(
        salaryCycle: salaryCycle,
        payslip: payslip,
      ),
    ),
  );
}

void walletPageNavigation(BuildContext context) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => ErrorPage()),
  // );
}

void settingPageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 4);
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => ProfilePage(),
  //   ),
  // );
}

void profilePageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProfilePage(),
    ),
  );
}
