import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/network_services/dio_adapter.dart';

class ProjectService {
  Future<List<Project>> getProjects() async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/projects?OrderBy=dateDesc',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/members/me/projects status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Project> projects = data.map((e) => Project.fromJson(e)).toList();
        return projects;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('API /v1/members/me/projects status: ');
      throw Exception(e);
    }
  }

  Future<Project> getProject(String projectId) async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/projects/${projectId}',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/projects status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final project = Project.fromJson(response.data['message']);
        return project;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('API /v1/projects error: $e');
      throw Exception(e);
    }
  }

  Future<int> getProjectsCount() async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/projects/count',
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
