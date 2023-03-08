import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/domain/SignIn/sign_in_model.dart';

class AuthService {
  // var data = {"emailAddress": "admin@gmail.com", "password": "Asd123@@"};

  Future<SignIn> loginWithEmailPassword(String email, String password) async {
    var formData = {"emailAddress": email, "password": password};
    final response =
        await Dio().post('https://api.uniinc-cnb.com/v1/users/login',
            data: formData,
            options: Options(headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            }));
    if (response.statusCode == 200) {
      final auth = SignIn.fromJson(response.data["message"]);
      print('Login With Email Password success');
      return auth;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}

final authServiceProvider = Provider<AuthService>((ref) => AuthService());
