import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wage/providers/api_provider.dart';

import '../domain/SignIn/sign_in_model.dart';

final authSignInProvider = FutureProvider.autoDispose<SignIn>(
  (ref) {
    return ref.read(apiProvider).getAuthDatas().then(
      (data) {
        return data;
      },
    );
  },
);

final authProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});
