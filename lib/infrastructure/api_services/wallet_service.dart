import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/infrastructure/network_services/dioAdapter.dart';

class WalletsService {
  Future<Wallets> getSelfWallets() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/wallets',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API/v1/members/me/wallets status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final wallets = Wallets.fromJson(response.data["message"]);
        return wallets;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('API/v1/members/me/wallets status: ');
      throw Exception(e);
    }
  }
}
