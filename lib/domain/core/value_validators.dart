import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/value_failure.dart';

/// Reusable validation functions for value objects
/// These validators return Either<ValueFailure, String> for composability
class ValueValidators {
  /// Validates email address format using regex
  static Either<ValueFailure<String>, String> validateEmailAddress(
    String input,
  ) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidEmail(failedValue: input));
    }
  }

  /// Validates password meets minimum length requirement
  static Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.length >= 6) {
      return right(input);
    } else {
      return left(ValueFailure.shortPassword(failedValue: input));
    }
  }

  /// Validates string is not empty
  static Either<ValueFailure<String>, String> validateStringNotEmpty(
    String input,
  ) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(ValueFailure.emptyValue(failedValue: input));
    }
  }

  /// Validates string does not exceed maximum length
  static Either<ValueFailure<String>, String> validateMaxStringLength(
    String input,
    int maxLength,
  ) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength),
      );
    }
  }

  /// Validates string meets minimum length requirement
  static Either<ValueFailure<String>, String> validateMinStringLength(
    String input,
    int minLength,
  ) {
    if (input.length >= minLength) {
      return right(input);
    } else {
      return left(ValueFailure.shortPassword(failedValue: input));
    }
  }

  /// Validates string is single line (no line breaks)
  static Either<ValueFailure<String>, String> validateSingleLine(String input) {
    if (!input.contains('\n')) {
      return right(input);
    } else {
      return left(ValueFailure.multiline(failedValue: input));
    }
  }

  /// Validates phone number format
  static Either<ValueFailure<String>, String> validatePhoneNumber(
    String input,
  ) {
    // Basic phone number validation - can be enhanced based on requirements
    const phoneRegex = r'^\+?[1-9]\d{1,14}$';
    if (RegExp(phoneRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidPhoneNumber(failedValue: input));
    }
  }
}
