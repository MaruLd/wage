import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Auth/auth_model.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/infrastructure/api_services/authService.dart';
import '../../presentation/settings/global_settings.dart' as global;

class ProjectDAO {
  Future<List<Project>> getProjects() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      AuthDTO auth;
      if (jwtToken == null) {
        print('jwt token not found in storage!');
        auth = await AuthDAO().getAuthInformation();
        jwtToken = auth.token;
      }
      final response =
          await Dio().get('${global.apiUrl}/v1/members/@me/projects',
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
      AuthDTO auth;
      if (jwtToken == null) {
        print('jwt token not found in storage!');
        auth = await AuthDAO().getAuthInformation();
        jwtToken = auth.token;
      }
      final response = await Dio()
          .get('https://api.uniinc-cnb.com/v1/members/@me/projects/count',
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
