import 'package:flutter/material.dart';

import '../../presentation/pages/error/error_page.dart';
import '../../presentation/pages/navigation/navigation_bar.dart';
import '../../presentation/pages/payslips/payslip_page.dart';
import '../../presentation/pages/profile_overview/profile_page.dart';
import '../../presentation/pages/salary_cycle/salary_cycle_page.dart';

void salaryCyclePageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 3);
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => SalaryCyclePage()),
  // );
}

void payslipPageNavigation(BuildContext context) {
  Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(
      builder: (_) => PayslipPage(),
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
