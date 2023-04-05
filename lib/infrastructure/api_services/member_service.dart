import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/infrastructure/authentication_service/authService.dart';
import '../network_services/dioAdapter.dart';

class MemberService {
  Future<Member> getSelfInfo([data]) async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');

      final response = await dio.get('/v1/members/me',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/members/me status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final member = Member.fromJson(response.data["message"]);
        return member;
      } else if (response.statusCode == 401) {
        AuthDAO auth = AuthDAO();
        await auth.getAuthInformation();
        getSelfInfo(data);
        throw ('');
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<int> getSelfAchievement() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/achievements',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      if (response.statusCode == 200) {
        final hour = response.data["message"]["totalWorkHours"];
        return hour;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}