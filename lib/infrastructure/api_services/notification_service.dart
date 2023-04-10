import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Notification/notification_model.dart';
import '../../domain/Transaction/transaction_model.dart';
import '../network_services/dioAdapter.dart';

class NotificationService {
  Future<List<NotificationModel>> getNotifications() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/notifications',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/members/me/notifications status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<NotificationModel> notifications =
            data.map((e) => NotificationModel.fromJson(e)).toList();
        return notifications;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
