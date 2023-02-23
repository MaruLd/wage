import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wage/presentation/pages/navbar/navbar.dart';

class CheckSignIn extends StatelessWidget {
  const CheckSignIn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              // GoogleSignInProvider.refreshFirebaseUser();
              return Navigation();
            } else if (snapshot.hasError) {
              return const Center(child: Text("Something went Wrong!"));
            } else {
              return Navigation();
            }
          }));
}
