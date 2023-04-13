import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Level/level_model.dart';
import '../network_services/dioAdapter.dart';

class LevelService {
  Future<Level> getNextLevel(double? MinXPNeeded) async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/levels',
          queryParameters: {'MinXPNeeded': MinXPNeeded == 0 ? 1 : MinXPNeeded},
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/levels status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final level = Level.fromJson(response.data["message"][0]);
        return level;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('/v1/levels status: ');
      throw Exception(e);
    }
  }
}
