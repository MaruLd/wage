import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Level/level_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import '../network_services/dioAdapter.dart';

class SalaryCycleService {
  Future<List<SalaryCycle>> getAllSalaryCycle() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/salarycycle',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<SalaryCycle> salaryCycles =
            data.map((e) => SalaryCycle.fromJson(e)).toList();
        print(salaryCycles);
        return salaryCycles;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
