import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/domain/core/freezed/common_failure.dart';
import 'package:flutter_template/domain/core/helpers/utility.dart';
import 'package:flutter_template/infrastructure/core/dev/logging_service.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/api_error_interceptors.dart';

class ApiRequest {
  static Future<Either<CommonFailure, Response>> requestData({
    required Future<dynamic> request,
  }) async {
    try {
      final Response res = await request;

      return right(res);
    } on RequestTimeoutException {
      return left(const CommonFailure.requestTimeout());
    } on BadRequestException catch (e) {
      LoggingService.error(e.toString());
      final errorMessage = Utility.errorMessages(e.response);
      LoggingService.error(errorMessage.toString());
      if (errorMessage.isNotEmpty) {
        return left(CommonFailure.badRequest(errorMessage.toString()));
      }

      return left(const CommonFailure.badRequest(null));
    } on NotFoundException catch (e) {
      LoggingService.error(e.toString());

      return left(const CommonFailure.notFound());
    } on UnauthorizedException catch (e) {
      LoggingService.error(e.toString());

      return left(const CommonFailure.sessionExpired());
    } on ForbiddenRequestException catch (e) {
      LoggingService.error(e.toString());

      return left(const CommonFailure.notAutherizedtoAccessResource());
    } on ValidationException catch (e) {
      LoggingService.error(e.toString());
      final errorMessage = Utility.errorMessages(e.response);
      if (errorMessage.isNotEmpty) {
        return left(
          CommonFailure.validationError(message: errorMessage.toString()),
        );
      }

      return left(
        CommonFailure.validationError(message: errorMessage.toString()),
      );
    } on DioException catch (e) {
      LoggingService.error(e.toString());
      LoggingService.error(e.toString());
      final errorMessage = Utility.errorMessages(e.response);
      if (errorMessage.isNotEmpty) {
        return left(CommonFailure.serverError(errorMessage.toString()));
      }

      return left(CommonFailure.serverError(e.toString()));
    } catch (e) {
      LoggingService.error(e.toString());

      return left(CommonFailure.serverError(e.toString()));
    }
  }
}
