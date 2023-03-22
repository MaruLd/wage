import 'dart:io';

import 'package:dio/dio.dart';
import '../../presentation/settings/global_settings.dart' as global;

class ServerService {
  Future<bool> checkServerStatus() async {
    try {
      final response = await Dio().get('${global.apiUrl}/v1/system/test');
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
