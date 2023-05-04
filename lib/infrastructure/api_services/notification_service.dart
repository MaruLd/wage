import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Notification/notification_model.dart';
import '../network_services/dio_adapter.dart';

class NotificationService {
  Future<List<NotificationModel>> getNotifications(int? currentPage) async {
    const storage = FlutterSecureStorage();

    var param = {"OrderBy": "dateDesc", "page-size": 10 * (currentPage ?? 1)};

    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/notifications',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      if (kDebugMode) {
        debugPrint(
            'GET /v1/members/me/notifications status: ${response.statusCode}');
      }
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<NotificationModel> notifications =
            data.map((e) => NotificationModel.fromJson(e)).toList();
        return notifications;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/members/me/notifications error: ');
      throw Exception(e);
    }
  }

  Future<int?> isReadNotification(String notificationId) async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.post('/v1/notification/$notificationId/read',
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              },
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      debugPrint(
          'POST /v1/notification/$notificationId/read status: ${response.statusCode}');
      return response.statusCode;
    } catch (e) {
      debugPrint('POST /v1/notification/$notificationId/read error: $e');
      throw Exception(e);
    }
  }
}
