import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../network_services/dio_adapter.dart';

class FCMService {
  void sendFCMToken() async {
    final storage = new FlutterSecureStorage();
    var token = await getDeviceToken();
    debugPrint('fcm token: ' + token);
    if (token == "") {
      throw Exception("FCM Token not found");
    }
    var param = {"token": token};

    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.post('/v1/users/fcm-token',
          data: jsonEncode(param),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/users/fcm-token status: ${response.statusCode}');
    } catch (e) {
      debugPrint('API /v1/users/fcm-token status: ');
      throw Exception(e);
    }
  }
}

Future<String> getDeviceToken() async {
  //request user permission for push notification
  FirebaseMessaging.instance.requestPermission();
  FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
  String? deviceToken = await _firebaseMessage.getToken();
  return (deviceToken == null) ? "" : deviceToken;
}
