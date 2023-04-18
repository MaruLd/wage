import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import '../network_services/dio_adapter.dart';

class PayslipService {
  Future<Payslip> getSelfPayslip(String salaryCycleId) async {
    final storage = new FlutterSecureStorage();
    var param = {
      'SalaryCycleId': salaryCycleId,
    };
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/payslips',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/members/me/payslips status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final payslip = Payslip.fromJson(response.data["message"][0]);
        return payslip;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('API /v1/members/me/payslips status: $e');
      throw Exception(e);
    }
  }

  Future<Payslip> getSelfPayslipItem(String projectId) async {
    final storage = new FlutterSecureStorage();
    var param = {
      'ProjectId': projectId,
    };
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/payslipitems/total',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/payslipitems/total status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final payslip = Payslip.fromJson(response.data["message"][0]);
        return payslip;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('API /v1/payslipitems/total error: $e');
      throw Exception(e);
    }
  }
}
