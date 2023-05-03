import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Task/task_model.dart';
import '../network_services/dio_adapter.dart';

class TaskService {
  Future<List<Task>> getTasks(String SalaryCycleId) async {
    const storage = FlutterSecureStorage();
    var param = {'SalaryCycleId': SalaryCycleId};

    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/tasks',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/members/me/tasks status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Task> tasks = data.map((e) => Task.fromJson(e)).toList();
        return tasks;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('/v1/levels status: ');
      throw Exception(e);
    }
  }
}
