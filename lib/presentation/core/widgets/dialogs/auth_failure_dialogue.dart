import 'package:flutter/material.dart';

import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/presentation/core/widgets/dialogs/app_dialog.dart';

class AuthFailureDialogue {
  static Future<void> showAuthFailureDialog(
    BuildContext context,
    AuthFailure failure,
  ) async {
    final errorMessage = failure.maybeMap(
      cancelledByUser: (_) => 'Operation cancelled by user',
      serverError: (e) => e.error,
      emailAlreadyInUse: (_) => 'This email is already in use',
      phoneAlreadyInUse: (_) => 'This phone number is already in use',
      invalidOTP: (_) => 'The OTP entered is invalid',
      failedToSendOTP: (_) => 'Failed to send OTP, please try again',
      signupFailed: (_) => 'Signup failed, please try again',
      userNotFound: (_) => 'No user found with the provided details',
      sessionExpired: (_) => 'Session expired, please log in again',
      requiresRecentLogin: (e) => e.message,
      deadLineExceeded: (_) => 'Operation deadline exceeded',
      requestTimeout: (_) => 'Request timed out, please try again',
      invalidEmailAndPasswordCombination: (_) =>
          'Invalid email and password combination',
      orElse: () => 'An unknown error occurred',
    );

    // Show Error Dialog
    await AppDialog.showError(context, errorMessage);
  }
}
