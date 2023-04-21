import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../network_services/dio_adapter.dart';

class PINService {
  Future<bool> getPIN() async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/users/me/pin',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/users/me/pin status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final data = response.data["message"];
        await storage.write(key: 'havePin', value: data);
        String? havePin = await storage.read(key: 'havePin');
        debugPrint('jwt in storage: $havePin');
        return data;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('/v1/users/me/pin status: ');
      throw Exception(e);
    }
  }

  Future<bool> updatePIN(String oldCode, String newCode) async {
    const storage = FlutterSecureStorage();
    var param = {"oldPinCode": oldCode, "newPinCode": newCode};
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.post('/v1/users/me/pin-code',
          data: jsonEncode(param),
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              },
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      debugPrint('API /v1/users/me/pin-code status: ${response.statusCode}');
      return response.data['message'];
    } catch (e) {
      throw Exception(e);
    }
  }
}
