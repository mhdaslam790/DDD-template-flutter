import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

/// Use case for signing out the current user
/// Encapsulates the business logic for sign out
@lazySingleton
class SignOut {
  final IAuthFacade _authFacade;

  SignOut(this._authFacade);

  /// Executes the sign out operation
  ///
  /// This operation does not fail, it always completes
  Future<void> call() async {
    return _authFacade.signOut();
  }
}
