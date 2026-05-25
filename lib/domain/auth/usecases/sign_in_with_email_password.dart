import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

/// Use case for signing in with email and password
/// Encapsulates the business logic for authentication
@lazySingleton
class SignInWithEmailPassword {
  final IAuthFacade _authFacade;

  SignInWithEmailPassword(this._authFacade);

  /// Executes the sign in operation
  ///
  /// Returns [Right(Unit)] on success
  /// Returns [Left(AuthFailure)] on failure
  Future<Either<AuthFailure, Unit>> call({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    return _authFacade.signInWithEmailAndPassword(
      emailAddress: emailAddress.getOrCrash(),
      password: password.getOrCrash(),
    );
  }
}
