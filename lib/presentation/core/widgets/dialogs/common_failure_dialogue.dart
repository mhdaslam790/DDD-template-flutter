import 'package:flutter/material.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/core/freezed/common_failure.dart';

import 'package:flutter_template/presentation/core/widgets/dialogs/app_dialog.dart';

class CommonFailureDialogue {
  static Future<void> showCommonFailureDialog(
    BuildContext context,
    CommonFailure failure,
  ) async {
    final errorMessage = failure.maybeMap(
      cancelledByUser: (_) => 'Operation cancelled by user',
      serverError: (e) => e.error,
      notFound: (_) => 'Requested resource not found',
      sessionExpired: (_) => 'Session expired, please log in again',
      requiresRecentLogin: (e) => e.message,
      deadLineExceeded: (_) => 'Operation deadline exceeded',
      badRequest: (e) => e.message ?? 'Bad request',
      notAutherizedtoAccessResource: (_) =>
          'You are not authorized to access this resource',
      validationError: (e) => e.message,
      requestTimeout: (_) => 'Request timed out, please try again',
      failedToAdd: (_) => 'Failed to add information',
      failedToUpdate: (_) => 'Failed to update information',
      failedToGetInfo: (_) => 'Failed to retrieve information',
      failedToGetList: (_) => 'Failed to retrieve the list',
      failedToDelete: (_) => 'Failed to delete the item',
      failedToAddAddress: (_) => 'Failed to add address',
      orElse: () => 'An unknown error occurred',
    );

    // Show Error Dialog
    await AppDialog.showError(context, errorMessage);
  }
}

class AuthFailurDialogue {
  static Future<void> showAuthFailureDialog(
    BuildContext context,
    AuthFailure failure,
  ) async {
    final errorMessage = failure.maybeMap(
      cancelledByUser: (_) => 'Operation cancelled by user',
      serverError: (e) => e.error,
      sessionExpired: (_) => 'Session expired, please log in again',
      requiresRecentLogin: (e) => e.message,
      deadLineExceeded: (_) => 'Operation deadline exceeded',
      requestTimeout: (_) => 'Request timed out, please try again',
      orElse: () => 'An unknown error occurred',
    );

    // Show Error Dialog
    await AppDialog.showError(context, errorMessage);
  }
}
