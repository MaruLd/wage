import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wage/infrastructure/network_services/dioAdapter.dart';
import '../../presentation/settings/global_settings.dart' as global;

class ServerService {
  Future<bool> checkServerStatus() async {
    try {
      final response = await dio.get('/v1/system/test');
      print(response.data);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
