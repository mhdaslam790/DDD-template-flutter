import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

/// Use case for updating the user's email address
/// This operation may require recent authentication
@lazySingleton
class UpdateEmail {
  final IAuthFacade _authFacade;

  UpdateEmail(this._authFacade);

  /// Executes the email update operation
  ///
  /// Returns [Right(Unit)] on success
  /// Returns [Left(AuthFailure)] on failure
  ///
  /// Note: This may require recent authentication
  Future<Either<AuthFailure, Unit>> call({
    required EmailAddress newEmailAddress,
  }) async {
    return _authFacade.updateEmailAddress(
      updatedEmail: newEmailAddress.getOrCrash(),
    );
  }
}
