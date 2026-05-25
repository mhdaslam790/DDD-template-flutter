import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

/// Use case for deleting the current user's account
/// This is a destructive operation that cannot be undone
@lazySingleton
class DeleteAccount {
  final IAuthFacade _authFacade;

  DeleteAccount(this._authFacade);

  /// Executes the account deletion operation
  ///
  /// Returns [Right(Unit)] on success
  /// Returns [Left(AuthFailure)] on failure
  ///
  /// Note: This may require recent authentication
  Future<Either<AuthFailure, Unit>> call() async {
    return _authFacade.deleteAccount();
  }
}
