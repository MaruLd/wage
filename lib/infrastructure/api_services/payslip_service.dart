import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import '../network_services/dioAdapter.dart';

class PayslipService {
  Future<Payslip> getSelfPayslip(String salaryCycleId) async {
    final storage = new FlutterSecureStorage();
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/payslips',
          queryParameters: {'salaryCycleId': salaryCycleId},
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      print('API /v1/members/me/payslipsstatus: ${response.statusCode}');
      if (response.statusCode == 200) {
        final payslip = Payslip.fromJson(response.data["message"][0]);
        return payslip;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('API /v1/members/me/payslipsstatus: ');
      throw Exception(e);
    }
  }
}
