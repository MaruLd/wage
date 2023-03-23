import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';

const apiUrl = "https://api.uniinc-cnb.com";

final dio = Dio()
  ..options.baseUrl = apiUrl
  ..interceptors.add(LogInterceptor())
  ..httpClientAdapter = Http2Adapter(
    ConnectionManager(
      idleTimeout: Duration(seconds: 15),
      // Ignore bad certificate
      onClientCreate: (_, config) => config.onBadCertificate = (_) => true,
    ),
  );
