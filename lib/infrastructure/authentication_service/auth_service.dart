import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Auth/auth_model.dart';
import '../network_services/dio_adapter.dart';

class AuthDAO {
  Future<AuthInfo?> getAuthInformation() async {
    const storage = FlutterSecureStorage();
    // final dio = Dio();
    try {
      String? token = await FirebaseAuth.instance.currentUser?.getIdToken();
      var formData = {"token": token};
      final response = await dio.post('/v1/users/login-google',
          data: formData,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
      print('/v1/users/login-google ${response.statusCode}');
      if (response.statusCode == 200) {
        final auth = AuthInfo.fromJson(response.data["message"]);
        await storage.write(key: 'jwt', value: auth.token);
        String? jwtToken = await storage.read(key: 'jwt');
        print('jwt in storage: $jwtToken');
        return auth;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('/v1/users/login-google $e');
    }
  }
}
