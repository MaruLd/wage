import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import '../network_services/dioAdapter.dart';

class VoucherService {
  Future<List<Voucher>> getVouchers() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/vouchers',
          // queryParameters: {'Name': voucherName},
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/vouchers status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Voucher> vouchers = data.map((e) => Voucher.fromJson(e)).toList();
        return vouchers;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<MemberVoucher>> getSelfVouchers() async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/vouchers',
          // queryParameters: {'Name': voucherName},
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/vouchers status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<MemberVoucher> vouchers =
            data.map((e) => MemberVoucher.fromJson(e)).toList();
        return vouchers;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<int?> buyVoucher(String voucherId) async {
    final storage = new FlutterSecureStorage();
    var param = {"action": "buy"};
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
      print(
          'API /v1/vouchers/${voucherId}/action status: ${response.statusCode}');
      return response.statusCode;
    } catch (e) {
      print('not working');
      throw Exception(e);
    }
  }
}