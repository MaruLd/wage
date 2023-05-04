import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import '../network_services/dio_adapter.dart';

class SalaryCycleService {
  Future<List<SalaryCycle>> getSelfAllSalaryCycle(
      DateTime? startDate, DateTime? endDate, int? currentPage) async {
    const storage = FlutterSecureStorage();
    var param = {
      "StartedAt": startDate,
      "EndedBefore": endDate,
      "OrderBy": "dateDesc",
      "page-size": 10 * (currentPage ?? 1)
    };
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/salarycycle',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      if (kDebugMode) {
        debugPrint(
            'GET /v1/members/me/salarycycle status: ${response.statusCode}');
      }
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<SalaryCycle> salaryCycles =
            data.map((e) => SalaryCycle.fromJson(e)).toList();
        return salaryCycles;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/members/me/salarycycle error: $e');
      throw Exception(e);
    }
  }
}
