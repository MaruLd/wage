import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Level/level_model.dart';
import '../network_services/dio_adapter.dart';

class LevelService {
  Future<Level> getNextLevel(double? MinXPNeeded) async {
    const storage = FlutterSecureStorage();
    var param = {'MinXPNeeded': MinXPNeeded == 0 ? 1 : MinXPNeeded!.round()};

    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/levels',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('GET /v1/levels status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final level = Level.fromJson(response.data["message"][0]);
        return level;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/levels error: $e');
      throw Exception(e);
    }
  }

  Future<List<Level>> getLevels() async {
    const storage = FlutterSecureStorage();

    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/levels',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/levels status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Level> levels = data.map((e) => Level.fromJson(e)).toList();
        return levels;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('/v1/levels status: ');
      throw Exception(e);
    }
  }
}
