import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Member/member_model.dart';

class MemberDAO {
  Future<Member> getMember() async {
    final storage = new FlutterSecureStorage();
    try {
      final jwtToken = await storage.read(key: 'jwt');
      final response =
          await Dio().get('https://api.uniinc-cnb.com/v1/members/@me',
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      if (response.statusCode == 200) {
        final member = Member.fromJson(response.data["message"]);
        return member;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
