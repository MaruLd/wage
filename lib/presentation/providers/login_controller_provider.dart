import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/SignIn/sign_in_model.dart';
import 'package:wage/presentation/providers/states/login_states.dart';
import 'package:wage/presentation/repository/auth_repository.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController(this.ref) : super(const LoginStateInitial());

  final Ref ref;

  void login(String email, String password) async {
    state = const LoginStateLoading();
    final storage = new FlutterSecureStorage();
    try {
      SignIn auth =
          await ref.read(authRepositoryProvider).login(email, password);
      await storage.write(key: 'jwt', value: auth.token);
      state = const LoginStateSuccess();
    } catch (e) {
      state = LoginStateError(e.toString());
    }
  }

  void logout() async {
    state = const LoginStateInitial();
  }

  void googleLogin() async {
    state = const LoginStateSuccess();
  }

  Future<String?> checkStorageForJWT() async {
    final storage = new FlutterSecureStorage();
    final jwtToken = await storage.read(key: 'jwt');
    if (jwtToken != null) {
      state = const LoginStateSuccess();
      return jwtToken;
    }
    state = const LoginStateInitial();
    return null;
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController(ref);
});
