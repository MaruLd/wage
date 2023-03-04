import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/infrastructure/authentication_service/email_sign_in.dart';
import 'package:wage/infrastructure/authentication_service/google_sign_in.dart';

import '../../infrastructure/DAO/memberDAO.dart';

final googleProvider = Provider((ref) => GoogleSignInService());

final userProvider = Provider((ref) => MemberDAO());

final userDataProvider = FutureProvider.autoDispose<Member>(
  (ref) {
    return ref.watch(userProvider).getMember();
  },
);
