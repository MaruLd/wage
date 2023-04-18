import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../authentication_service/auth_service.dart';

const apiUrl = "https://api.uniinc-cnb.com";

final dio = Dio()
  ..options.baseUrl = apiUrl
  ..httpClientAdapter = Http2Adapter(
    ConnectionManager(
      idleTimeout: Duration(seconds: 15),
      // Ignore bad certificate
      onClientCreate: (_, config) => config.onBadCertificate = (_) => true,
    ),
  )
  ..interceptors
      .add(InterceptorsWrapper(onError: (error, errorInterceptorHandler) async {
    if (error.response?.statusCode == 403 ||
        error.response?.statusCode == 401) {
      const storage = FlutterSecureStorage();
      String? jwtToken = await storage.read(key: 'jwt');
      if (jwtToken == null || jwtToken == '') {
        AuthDAO auth = AuthDAO();
        await auth.getAuthInformation();
      }
      _retry(error.requestOptions);
    }
  }));

Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  final options = new Options(
    method: requestOptions.method,
    headers: requestOptions.headers,
  );
  return dio.request<dynamic>(requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options);
}
