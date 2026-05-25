import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

/// Use case for registering a new user with email and password
/// Encapsulates the business logic for user registration
@lazySingleton
class RegisterWithEmailPassword {
  final IAuthFacade _authFacade;

  RegisterWithEmailPassword(this._authFacade);

  /// Executes the registration operation
  ///
  /// Returns [Right(Unit)] on success
  /// Returns [Left(AuthFailure)] on failure
  Future<Either<AuthFailure, Unit>> call({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    return _authFacade.registerWithEmailAndPassword(
      emailAddress: emailAddress.getOrCrash(),
      password: password.getOrCrash(),
    );
  }
}
