import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failure.freezed.dart';

@freezed
sealed class CommonFailure with _$CommonFailure {
  const factory CommonFailure.cancelledByUser() = CancelledByUser;
  const factory CommonFailure.serverError(String error) = ServerError;
  const factory CommonFailure.notFound() = NotFound;
  const factory CommonFailure.sessionExpired() = SessionExpired;
  const factory CommonFailure.requiresRecentLogin(String message) =
      RequiredRecentLogin;
  const factory CommonFailure.deadLineExceeded() = DeadLineExceeded;
  const factory CommonFailure.badRequest(String? message) = BadRequest;
  const factory CommonFailure.notAutherizedtoAccessResource() =
      NotAutherizedtoAccessResource;
  const factory CommonFailure.validationError({required String message}) =
      ValidationError;
  const factory CommonFailure.requestTimeout() = RequestTimeout;
  const factory CommonFailure.failedToAdd() = FailedToAdd;
  const factory CommonFailure.failedToUpdate() = FailedToUpdateInfo;
  const factory CommonFailure.failedToGetInfo() = FailedToGetInfo;
  const factory CommonFailure.failedToGetList() = FailedToGetList;
  const factory CommonFailure.failedToDelete() = FailedToDelete;
  const factory CommonFailure.failedToAddAddress() = _FailedToAddAddress;
}
