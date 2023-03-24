import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Auth/auth_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/authentication_service/authService.dart';
import 'package:wage/infrastructure/network_services/dioAdapter.dart';
import '../../presentation/settings/global_settings.dart' as global;

class ProjectDAO {
  Future<List<Project>> getProjects() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response =
          await dio.get('/v1/members/me/projects',
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Project> projects = data.map((e) => Project.fromJson(e)).toList();
        return projects;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<int> getProjectsCount() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response =
          await dio.get('/v1/members/me/projects/count',
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      if (response.statusCode == 200) {
        int count = response.data["message"]["total"];
        return count;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
