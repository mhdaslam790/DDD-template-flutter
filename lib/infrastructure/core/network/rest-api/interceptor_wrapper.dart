import 'package:dio/dio.dart';
import 'package:flutter_template/domain/core/constants/storage_constants.dart';
import 'package:flutter_template/domain/core/helpers/secure_storage.dart';
import 'package:flutter_template/infrastructure/core/dev/logging_service.dart';

class InterceptorWrapper extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storage = Storage().secureStorage;
    LoggingService.verbose(options.data);

    final userToken = await storage.read(key: StorageConstants.userToken);
    options.headers.addAll({'Authorization': 'Bearer $userToken'});

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggingService.info(response.statusCode);

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    LoggingService.error('response ${err.response}');

    if (err.response != null) {
      final statusCode = err.response!.statusCode;
      if (statusCode == 401) {
        final storage = Storage().secureStorage;
        await storage.write(key: StorageConstants.loggedIn, value: 'false');
        await storage.write(key: StorageConstants.userToken, value: '');
      }
    }

    return super.onError(err, handler);
  }
}
