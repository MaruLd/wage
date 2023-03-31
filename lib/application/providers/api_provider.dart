import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Level/level_model.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/api_services/walletsService.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';

import '../../domain/Auth/auth_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import '../../infrastructure/api_services/ServerService.dart';
import '../../infrastructure/api_services/salaryCycleService.dart';
import '../../infrastructure/authentication_service/authService.dart';
import '../../infrastructure/api_services/levelService.dart';
import '../../infrastructure/api_services/memberService.dart';
import '../../infrastructure/api_services/projectService.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final tokenProvider = Provider((ref) => AuthDAO());

final userProvider = Provider((ref) => MemberDAO());

final walletsProvider = Provider((ref) => WalletsDAO());

final projectProvider = Provider((ref) => ProjectDAO());

final serverProvider = Provider((ref) => ServerService());

final levelProvider = Provider((ref) => LevelService());

final salaryCycleProvider = Provider((ref) => SalaryCycleService());

final serverAvailableProvider = FutureProvider<bool>(
  (ref) {
    final server = ref.watch(serverProvider).checkServerStatus();
    return server;
  },
);

final apiTokenProvider = FutureProvider.autoDispose<AuthInfo?>(
  (ref) {
    final token = ref.watch(tokenProvider).getAuthInformation();
    ref.keepAlive();
    return token;
  },
);

final userDataProvider = FutureProvider<Member>(
  (ref) {
    return ref.watch(userProvider).getSelfInfo();
  },
);

final salaryCycleFutureProvider = FutureProvider<List<SalaryCycle>>(
  (ref) {
    return ref.watch(salaryCycleProvider).getAllSalaryCycle();
  },
);

final memberWorkHoursProvider = FutureProvider<int>(
  (ref) {
    var respone = ref.watch(userProvider).getSelfAchievement();
    return respone;
  },
);

final walletsDataProvider = FutureProvider<Wallets>(
  (ref) {
    return ref.watch(walletsProvider).getSelfWallets();
  },
);

final nextLevelDataProvider = FutureProvider<Level>(
  (ref) {
    final xpNeeded =
        ref.watch(walletsDataProvider).whenOrNull(data: (data) => data.totalXP);
    return ref.watch(levelProvider).getNextLevel(xpNeeded);
  },
);

final projectListDatasProvider = FutureProvider<List<Project>>((ref) {
  return ref.read(projectProvider).getProjects();
});

final projectsCountProvider = FutureProvider<int>((ref) {
  return ref.read(projectProvider).getProjectsCount();
});

// final loginStateProvider = Provider((ref) => LoginController(ref));

// final loginStatesProvider = FutureProvider<String?>(
//   (ref) {
//     return ref.watch(loginStateProvider).checkStorageForJWT();
//   },
// );
