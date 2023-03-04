import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wage/domain/SignIn/sign_in_model.dart';
import '../../domain/Auth/auth_model.dart';

class AuthDAO {
  Future<AuthDTO> getAuthInformation() async {
    String? token = await FirebaseAuth.instance.currentUser?.getIdToken();
    var formData = {"token": token};
    final response =
        await Dio().post('https://api.uniinc-cnb.com/v1/users/login-google',
            data: formData,
            options: Options(headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            }));
    if (response.statusCode == 200) {
      final auth = AuthDTO.fromJson(response.data["message"]);
      return auth;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
