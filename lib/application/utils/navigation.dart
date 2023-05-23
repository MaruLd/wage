import 'package:flutter/material.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/pages/transfer/transfer_page.dart';

import '../../presentation/pages/level/level_page.dart';
import '../../presentation/pages/navigation/navigation_bar.dart';
import '../../presentation/pages/notification/notification_page.dart';
import '../../presentation/pages/payslip_detail/payslip_page.dart';
import '../../presentation/pages/pin/add_new_pin_page/add_new_pin_page.dart';
import '../../presentation/pages/pin/pin_check_page/pin_check_page.dart';
import '../../presentation/pages/profile/profile_page.dart';
import '../../presentation/pages/project/project_page.dart';
import '../../presentation/pages/project_detail/project_detail_page.dart';
import '../../presentation/pages/sign_in/sign_in_page.dart';
import '../../presentation/pages/transfer/components/point_input_page/point_input_page.dart';
import '../../presentation/pages/transfer/components/qr_scanner_page.dart';
import '../../presentation/pages/voucher/voucher_page.dart';

void homePageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 0);
}

void transactionPageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 1);
}

void transferPageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TransferPage(),
    ),
  );
}

void salaryCyclePageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 3);
}

void settingPageNavigation(BuildContext context) {
  Navigation.setPageIndex(context, 4);
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

void projectDetailPageNavigation(BuildContext context, Project project) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProjectDetailPage(project: project),
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

void newPinPageNavigation(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AddNewPinPage(),
    ),
  );
}

void pointInputPageNavigation(context, toMemberId) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PointInputPage(toMemberId: toMemberId),
    ),
  );
}

void qrPageNavigation(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => QRScannerPage(),
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
