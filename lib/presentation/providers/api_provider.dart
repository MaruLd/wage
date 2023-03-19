import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/api_services/walletsService.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';
import 'package:wage/presentation/providers/login_controller_provider.dart';

import '../../infrastructure/api_services/memberService.dart';
import '../../infrastructure/api_services/projectService.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final userProvider = Provider((ref) => MemberDAO());

final walletsProvider = Provider((ref) => WalletsDAO());

final projectProvider = Provider((ref) => ProjectDAO());

final loginStateProvider = Provider((ref) => LoginController(ref));

final userDataProvider = FutureProvider.autoDispose<Member>(
  (ref) {
    return ref.watch(userProvider).getMember();
  },
);

final memberWorkHoursProvider = FutureProvider.autoDispose<int>(
  (ref) {
    return ref.watch(userProvider).getAchievement();
  },
);

final walletsDataProvider = FutureProvider.autoDispose<Wallets>(
  (ref) {
    return ref.watch(walletsProvider).getWallets();
  },
);

final projectListDatasProvider =
    FutureProvider.autoDispose<List<Project>>((ref) {
  return ref.read(projectProvider).getProjects();
});

final projectsCountProvider = FutureProvider.autoDispose<int>((ref) {
  return ref.read(projectProvider).getProjectsCount();
});

final loginStatesProvider = FutureProvider<String?>(
  (ref) {
    return ref.watch(loginStateProvider).checkStorageForJWT();
  },
);
