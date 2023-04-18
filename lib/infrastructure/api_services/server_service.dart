import 'package:wage/infrastructure/network_services/dio_adapter.dart';

class ServerService {
  Future<bool> checkServerStatus() async {
    try {
      final response = await dio.get('/v1/system/test');
      print('API /v1/system/test status: ${response.statusCode}');
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('API /v1/system/test status: ');
      throw Exception(e);
    }
  }
}
