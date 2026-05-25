import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/value_failure.dart';
import 'package:flutter_template/domain/core/value_validators.dart';

/// Value object for email addresses with built-in validation
class EmailAddress {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(ValueValidators.validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  /// Returns the email string if valid, throws if invalid
  /// Use this only when you're certain the email is valid
  String getOrCrash() {
    return value.fold((f) => throw Error(), (r) => r);
  }

  /// Returns the email string or empty string if invalid
  String getOrEmpty() {
    return value.fold((f) => '', (r) => r);
  }

  /// Checks if the email is valid
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EmailAddress && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'EmailAddress($value)';
}

/// Value object for passwords with built-in validation
class Password {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(ValueValidators.validatePassword(input));
  }

  const Password._(this.value);

  /// Returns the password string if valid, throws if invalid
  /// Use this only when you're certain the password is valid
  String getOrCrash() {
    return value.fold((f) => throw Error(), (r) => r);
  }

  /// Returns the password string or empty string if invalid
  String getOrEmpty() {
    return value.fold((f) => '', (r) => r);
  }

  /// Checks if the password is valid
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Password && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Password(****)'; // Don't expose password in toString
}
