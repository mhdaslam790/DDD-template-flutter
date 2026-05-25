import 'package:dio/dio.dart';
import 'package:flutter_template/domain/core/environment/environment.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/api_error_interceptors.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/interceptor_wrapper.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/unauthorizes_interceptor_wrapper.dart';

class ApiServiceV2 {
  static final BaseOptions options = BaseOptions(
    baseUrl: Environment().config.apiHost,
    connectTimeout: const Duration(milliseconds: 30000), //5s
    receiveTimeout: const Duration(milliseconds: 30000), //15s
    contentType: Headers.jsonContentType,
  );

  Dio dioUnauthorizedClient = Dio(options)
    ..interceptors.addAll([
      UnauthorizedInterceptorWrapper(),
      LogInterceptor(),
      AppInterceptors(),
    ]);

  Dio dioAuthorizedClient = Dio(options)
    ..interceptors.addAll([
      InterceptorWrapper(),
      LogInterceptor(),
      AppInterceptors(),
    ]);
}
