import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

/// Use case for checking the current authentication state
/// Determines if a user is currently signed in
@lazySingleton
class CheckAuthState {
  final IAuthFacade _authFacade;

  CheckAuthState(this._authFacade);

  /// Executes the auth state check
  ///
  /// Returns [true] if user is signed in
  /// Returns [false] if user is not signed in
  Future<bool> call() async {
    return _authFacade.checkAuthState();
  }
}
