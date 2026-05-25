part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) = _RegisterWithEmailAndPassword;

  const factory AuthEvent.signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) = _SignInWithEmailAndPassword;

  const factory AuthEvent.signOut() = _SignOut;

  const factory AuthEvent.checkAuthState() = _CheckAuthState;

  const factory AuthEvent.sendEmailConfirmation({
    required EmailAddress emailAddress,
  }) = _SendEmailConfirmation;

  const factory AuthEvent.deleteAcccount() = _DeleteAccount;

  const factory AuthEvent.updateEmailAddress({
    required EmailAddress emailAddress,
  }) = _UpdateEmailAddress;

  const factory AuthEvent.updateConnectivityStatus(ConnectivityResult status) =
      _UpdateConnectivityStatus;

  const factory AuthEvent.checkConnectivityStatus() = _CheckConnectivityStatus;
}
