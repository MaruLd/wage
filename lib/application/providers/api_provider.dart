import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Level/level_model.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/domain/Transaction/transaction_model.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/api_services/wallet_service.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';
import 'package:wage/infrastructure/param/filter_params.dart';

import '../../domain/Auth/auth_model.dart';
import '../../domain/Notification/notification_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import '../../infrastructure/api_services/fcm_service.dart';
import '../../infrastructure/api_services/notification_service.dart';
import '../../infrastructure/api_services/payslip_service.dart';
import '../../infrastructure/api_services/pin_service.dart';
import '../../infrastructure/api_services/salary_cycle_service.dart';
import '../../infrastructure/api_services/server_service.dart';
import '../../infrastructure/api_services/transaction_service.dart';
import '../../infrastructure/api_services/voucher_service.dart';
import '../../infrastructure/authentication_service/auth_service.dart';
import '../../infrastructure/api_services/level_service.dart';
import '../../infrastructure/api_services/member_service.dart';
import '../../infrastructure/api_services/project_service.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final tokenProvider = Provider((ref) => AuthDAO());

final userProvider = Provider((ref) {
  ref.watch(apiTokenProvider);
  return MemberService();
});

final walletsProvider = Provider((ref) => WalletsService());

final projectProvider = Provider((ref) => ProjectService());

final serverProvider = Provider((ref) => ServerService());

final levelProvider = Provider((ref) => LevelService());

final salaryCycleProvider = Provider((ref) => SalaryCycleService());

final payslipProvider = Provider((ref) => PayslipService());

final fcmProvider = Provider((ref) => FCMService());

final pinProvider = Provider((ref) => PINService());

final voucherProvider = Provider((ref) => VoucherService());

final transactionProvider = Provider((ref) => TransactionService());

final notificationProvider = Provider((ref) => NotificationService());

final serverAvailableProvider = FutureProvider<bool>(
  (ref) {
    final server = ref.watch(serverProvider).checkServerStatus();
    return server;
  },
);

final fcmTokenProvider = FutureProvider<void>(
  (ref) {
    final fcm = ref.watch(fcmProvider).sendFCMToken();
    return fcm;
  },
);

final checkPinProvider = FutureProvider<bool>(
  (ref) async {
    const storage = FlutterSecureStorage();
    String? havePinString = await storage.read(key: 'havePin');
    bool havePin =
        havePinString != null ? havePinString.toLowerCase() == 'true' : false;
    if (havePin) {
      final checkHavePin = ref.watch(pinProvider).getPIN();
      return checkHavePin;
    }
    return havePin;
  },
);

final updatePinProvider = FutureProvider.autoDispose.family<bool, Parameters>(
  (ref, param) async {
    final checkHavePin = ref
        .watch(pinProvider)
        .updatePIN(param.parameterList[0], param.parameterList[1]);
    return checkHavePin;
  },
);

final apiTokenProvider = FutureProvider<AuthInfo?>(
  (ref) {
    final token = ref.watch(tokenProvider).getAuthInformation();
    return token;
  },
);

final userFutureProvider = FutureProvider.autoDispose<Member>(
  (ref) {
    return ref.watch(userProvider).getSelfInfo();
  },
);

final payslipFutureProvider = FutureProvider.family<Payslip, String>(
  (ref, salaryCycleId) {
    return ref.watch(payslipProvider).getSelfPayslip(salaryCycleId);
  },
);

final payslipItemFutureProvider =
    FutureProvider.autoDispose.family<double, String>(
  (ref, projectId) {
    return ref.watch(payslipProvider).getSelfProjectXP(projectId);
  },
);

final salaryCycleFutureProvider =
    FutureProvider.autoDispose.family<List<SalaryCycle>, Parameters>(
  (ref, param) {
    return ref.watch(salaryCycleProvider).getSelfAllSalaryCycle(
        param.parameterList[0], param.parameterList[1], param.parameterList[2]);
  },
);

final notificationFutureProvider =
    FutureProvider.autoDispose.family<List<NotificationModel>, int>(
  (ref, currentPage) {
    return ref.watch(notificationProvider).getNotifications(currentPage);
  },
);

final isReadnotificationFutureProvider = FutureProvider.family<int?, String>(
  (ref, notificationId) {
    return ref.watch(notificationProvider).isReadNotification(notificationId);
  },
);

final voucherListFutureProvider = FutureProvider.autoDispose<List<Voucher>>(
  (ref) {
    return ref.watch(voucherProvider).getVouchers();
  },
);

final buyVoucherFutureProvider =
    FutureProvider.autoDispose.family<Response, Parameters>(
  (ref, param) {
    return ref
        .watch(voucherProvider)
        .buyVoucher(param.parameterList[0], param.parameterList[1]);
  },
);

final memberVoucherListFutureProvider =
    FutureProvider.autoDispose<List<MemberVoucher>>(
  (ref) {
    return ref.watch(voucherProvider).getSelfVouchers();
  },
);

final workHoursFutureProvider = FutureProvider<int>(
  (ref) {
    var respone = ref.watch(userProvider).getSelfAchievement();
    return respone;
  },
);

final walletsFutureProvider = FutureProvider<Wallets>(
  (ref) {
    return ref.watch(walletsProvider).getSelfWallets();
  },
);

final nextLevelFutureProvider = FutureProvider<Level>(
  (ref) {
    double? xpNeeded = ref
        .watch(walletsFutureProvider)
        .whenOrNull(data: (data) => data.totalXP);
    return ref.watch(levelProvider).getNextLevel(xpNeeded);
  },
);

final projectListFutureProvider = FutureProvider<List<Project>>((ref) {
  return ref.watch(projectProvider).getProjects();
});

final projectFutureProvider =
    FutureProvider.family<Project, String>((ref, param) {
  return ref.watch(projectProvider).getProject(param);
});

final transactionListFutureProvider = FutureProvider.autoDispose
    .family<List<Transaction>, Parameters>((ref, param) {
  return ref.watch(transactionProvider).getTransactions(
      param.parameterList[0], param.parameterList[1], param.parameterList[2]);
});

final projectsCountProvider = FutureProvider<int>((ref) {
  return ref.watch(projectProvider).getProjectsCount();
});
