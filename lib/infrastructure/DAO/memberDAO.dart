import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Auth/auth_model.dart';
import 'package:wage/domain/Member/member_model.dart';
import 'package:wage/infrastructure/DAO/authDAO.dart';

class MemberDAO {
  Future<Member> getMember() async {
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
          await Dio().get('https://api.uniinc-cnb.com/v1/members/@me',
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      if (response.statusCode == 200) {
        final member = Member.fromJson(response.data["message"]);
        print(member);
        return member;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}