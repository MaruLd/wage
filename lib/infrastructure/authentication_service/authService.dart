import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Auth/auth_model.dart';
import '../network_services/dioAdapter.dart';

class AuthDAO {
  Future<AuthDTO?> getAuthInformation() async {
    final storage = new FlutterSecureStorage();
    try {
      String? token = await FirebaseAuth.instance.currentUser?.getIdToken();
      var formData = {"token": token};
      final response = await dio.post('/v1/users/login-google',
          data: formData,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
      if (response.statusCode == 200) {
        final auth = AuthDTO.fromJson(response.data["message"]);
        await storage.write(key: 'jwt', value: auth.token);
        String? jwtToken = await storage.read(key: 'jwt');
        print('jwt in storage: $jwtToken');
        return auth;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (ex) {
      print(Exception(ex.toString()));
    }
  }
}
