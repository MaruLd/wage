import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wage/domain/Auth/auth_model.dart';

import 'auth_service.dart';

class GoogleSignInService extends ChangeNotifier {
  static final GoogleSignIn _googleSignIn =
      GoogleSignIn(scopes: <String>['email', 'profile']);

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    final googleUser = await _googleSignIn.signIn();
    AuthDAO apiToken = AuthDAO();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);

    await apiToken.getAuthInformation();
    notifyListeners();
  }

  Future<void> signOutWithGoogle() async {
    // Sign out with firebase
    await FirebaseAuth.instance.signOut();
    // Sign out with google
    await _googleSignIn.signOut();
    final storage = new FlutterSecureStorage();
    await storage.delete(key: 'jwt');

    notifyListeners();
  }

  static Future<String>? getUserToken() {
    return FirebaseAuth.instance.currentUser?.getIdToken();
  }

  static Future refreshFirebaseUser() async {
    if (FirebaseAuth.instance.currentUser != null) {
      final user = FirebaseAuth.instance.currentUser;
      final idTokenResult = await user!.getIdTokenResult(true);
      return idTokenResult.token;
    }
  }
}
