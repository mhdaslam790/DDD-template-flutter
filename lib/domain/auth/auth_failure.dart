import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
sealed class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError(String error) = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.phoneAlreadyInUse() = PhoneAlreadyInUse;
  const factory AuthFailure.invalidOTP() = InvalidOTP;
  const factory AuthFailure.failedToSendOTP() = FailedToSendOTP;
  const factory AuthFailure.signupFailed() = SignupFailed;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.sessionExpired() = SessionExpired;
  const factory AuthFailure.requiresRecentLogin(String message) =
      RequiredRecentLogin;
  const factory AuthFailure.deadLineExceeded() = DeadLineExceeded;
  const factory AuthFailure.deleteAccountFailure() = DeleteAccountFailure;
  const factory AuthFailure.requestTimeout() = RequestTimeout;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
