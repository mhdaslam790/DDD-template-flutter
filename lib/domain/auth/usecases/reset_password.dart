import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

/// Use case for resetting user password
/// Sends a password reset email to the user
@lazySingleton
class ResetPassword {
  final IAuthFacade _authFacade;

  ResetPassword(this._authFacade);

  /// Executes the password reset operation
  ///
  /// Returns [Right(Unit)] on success (email sent)
  /// Returns [Left(AuthFailure)] on failure
  Future<Either<AuthFailure, Unit>> call({
    required EmailAddress emailAddress,
  }) async {
    return _authFacade.resetPassword(emailAddress: emailAddress.getOrCrash());
  }
}
