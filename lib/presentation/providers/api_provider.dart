import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/infrastructure/DAO/walletsDAO.dart';
import 'package:wage/infrastructure/authentication_service/email_sign_in.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';
import 'package:wage/presentation/providers/login_controller_provider.dart';

import '../../infrastructure/DAO/memberDAO.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final userProvider = Provider((ref) => MemberDAO());

final walletsProvider = Provider((ref) => WalletsDAO());

final loginStateProvider = Provider((ref) => LoginController(ref));

final userDataProvider = FutureProvider.autoDispose<Member>(
  (ref) {
    return ref.watch(userProvider).getMember();
  },
);

final walletsDataProvider = FutureProvider.autoDispose<Wallets>(
  (ref) {
    return ref.watch(walletsProvider).getWallets();
  },
);

final loginStatesProvider = FutureProvider<String?>(
  (ref) {
    return ref.watch(loginStateProvider).checkStorageForJWT();
  },
);
