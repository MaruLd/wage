import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Level/level_model.dart';
import '../network_services/dio_adapter.dart';

class FCMService {
  void sendFCMToken() async {
    final storage = new FlutterSecureStorage();
    var token = await getDeviceToken();
    print('fcm token: ' + token);
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
      print('API /v1/users/fcm-token status: ${response.statusCode}');
    } catch (e) {
      print('API /v1/users/fcm-token status: ');
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
