import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import '../network_services/dio_adapter.dart';

class PayslipService {
  Future<Payslip> getSelfPayslip(String salaryCycleId) async {
    const storage = FlutterSecureStorage();
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
      debugPrint('GET /v1/members/me/payslips status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final payslip = Payslip.fromJson(response.data["message"][0]);
        return payslip;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/members/me/payslips status: $e');
      throw Exception(e);
    }
  }

  Future<double> getSelfProjectXP(String projectId) async {
    const storage = FlutterSecureStorage();
    var param = {
      'ProjectId': projectId,
    };
    debugPrint('$param');
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/payslipitems/total',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint('GET /v1/payslipitems/total status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final payslip = response.data["message"]["totalXP"];
        return payslip.toDouble();
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/payslipitems/total error: $e');
      throw Exception(e);
    }
  }
}
