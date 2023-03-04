

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/SignIn/sign_in_model.dart';
import 'package:wage/infrastructure/authentication_service/email_sign_in.dart';

class AuthRepository {
  final AuthService _authService;
  AuthRepository(this._authService);

  Future<SignIn> login(String email, String password) async {
    return _authService.loginWithEmailPassword(email, password);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(authServiceProvider));
});