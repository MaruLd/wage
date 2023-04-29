import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import '../network_services/dio_adapter.dart';

class VoucherService {
  Future<List<Voucher>> getVouchers() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/vouchers?page-size=100',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/vouchers status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Voucher> vouchers = data.map((e) => Voucher.fromJson(e)).toList();
        return vouchers;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('API /v1/vouchers status: ');
      throw Exception(e);
    }
  }

  Future<List<MemberVoucher>> getSelfVouchers() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/vouchers?page-size=100',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('API /v1/vouchers status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<MemberVoucher> vouchers = data
            .map((e) => MemberVoucher.fromJson(e))
            .where(
                (voucher) => voucher.status == MemberVoucherStatusEnum.created)
            .toList();
        return vouchers;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('API /v1/vouchers status: ');
      throw Exception(e);
    }
  }

  Future<Response> buyVoucher(String voucherId, String pinCode) async {
    final storage = new FlutterSecureStorage();
    var param = {"action": "buy", "pinCode": pinCode};
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.post('/v1/vouchers/${voucherId}/action',
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
          'API /v1/vouchers/${voucherId}/action status: ${response.statusCode}');
      debugPrint('${response.data}');
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response> usedVoucher(
      String memberVoucherId) async {
    const storage = FlutterSecureStorage();
    var param = {
      "memberVoucherId": memberVoucherId,
      "status": "used"
    };
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.put('/v1/membervoucher',
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
      debugPrint('API /v1/membervoucher status: ${response.statusCode}');
      debugPrint('${response.data}');
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
