import 'package:flutter/material.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';

import '../../presentation/pages/level/level_page.dart';
import '../../presentation/pages/navigation/navigation_bar.dart';
import '../../presentation/pages/notification/notification_page.dart';
import '../../presentation/pages/payslip/payslip_page.dart';
import '../../presentation/pages/payslip_detail/payslip_detail_page.dart';
import '../../presentation/pages/pin/pin_check_page/pin_check_page.dart';
import '../../presentation/pages/profile/profile_page.dart';
import '../../presentation/pages/project/project_page.dart';
import '../../presentation/pages/sign_in/sign_in_page.dart';
import '../../presentation/pages/voucher/voucher_page.dart';

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
    BuildContext context, SalaryCycle salaryCycle) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PayslipDetailPage(
        salaryCycle: salaryCycle,
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

void transactionPageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 1);
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

void voucherPageNavigation(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VoucherPage(),
      ));
}

void projectPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProjectPage(),
    ),
  );
}

void notificationPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => NotificationPage(),
    ),
  );
}

void levelPageNavigation(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LevelPage(),
    ),
  );
}

void pinPageNavigation(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PinCheckPage(),
    ),
  );
}

void signInPageNavigation(context) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => SignInPage(),
      ),
      (route) => false);
}
