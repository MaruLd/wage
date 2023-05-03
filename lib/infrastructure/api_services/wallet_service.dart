import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Wallets/wallets_model.dart';
import 'package:wage/infrastructure/network_services/dio_adapter.dart';

class WalletService {
  Future<Wallets> getSelfWallets() async {
    const storage = FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/wallets',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API/v1/members/me/wallets status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final wallets = Wallets.fromJson(response.data["message"]);
        return wallets;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('API/v1/members/me/wallets status: ');
      throw Exception(e);
    }
  }

  Future<Response> transferPoint(
      String toMemberId, double transferPoint) async {
    const storage = FlutterSecureStorage();
    var param = {"toMemberId": toMemberId, "amount": transferPoint};
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.post('/v1/members/me/wallets/transactions',
          data: jsonEncode(param),
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              },
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer $jwtToken"
              }));
      debugPrint(
          'API /v1/members/me/wallets/transactions status: ${response.statusCode}');
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
