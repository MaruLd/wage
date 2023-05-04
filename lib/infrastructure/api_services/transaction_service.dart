import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/Transaction/transaction_model.dart';
import '../network_services/dio_adapter.dart';

class TransactionService {
  Future<List<Transaction>> getTransactions(
      DateTime? startDate, DateTime? endDate, int? currentPage) async {
    const storage = FlutterSecureStorage();
    var param = {
      "FromDate": startDate,
      "ToDate": endDate,
      "OrderBy": "createdAtDesc",
      "page-size": 10 * (currentPage ?? 1)
    };
    try {
      String? jwtToken = await storage.read(key: 'jwt');
      final response = await dio.get('/v1/members/me/transactions',
          queryParameters: param,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.authorizationHeader: "Bearer $jwtToken"
          }));
      debugPrint(
          'GET /v1/members/me/transactions status: ${response.statusCode}');
      if (response.statusCode == 200) {
        List data = response.data["message"];
        List<Transaction> transactions =
            data.map((e) => Transaction.fromJson(e)).toList();
        return transactions;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      debugPrint('GET /v1/members/me/transactions error: $e');
      throw Exception(e);
    }
  }
}
