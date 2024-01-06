import 'package:dio/dio.dart';



Dio dioConfig() {
  Dio dio = Dio();
  dio
    ..options.receiveTimeout = const Duration(seconds: 25)
    ..options.connectTimeout = const Duration(seconds: 25);
  dio.interceptors.add(LogInterceptor(
    error: true,
    requestBody: true,
    responseBody: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
  ));
  

  return dio;
}