import 'package:dio/dio.dart';
import 'package:flutter_template/infrastructure/core/dev/logging_service.dart';

class UnauthorizedInterceptorWrapper extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggingService.info(response.statusCode);

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    LoggingService.error('response ${err.response}');
    LoggingService.error(err.error);

    return super.onError(err, handler);
  }
}
