import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'api_provider.dart';

final authProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

final apiTokenCheck = FutureProvider(
  (ref) async {
    const storage = FlutterSecureStorage();
    String? jwtToken = await storage.read(key: 'jwt');
    print('JWT Token: $jwtToken');
    return jwtToken;
  },
);
