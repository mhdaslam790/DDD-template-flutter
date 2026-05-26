import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/value_failure.dart';
import 'package:flutter_template/domain/core/value_object.dart';
import 'package:flutter_template/domain/core/value_validators.dart';

/// Value object for email addresses with built-in validation
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(ValueValidators.validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

/// Value object for passwords with built-in validation
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(ValueValidators.validatePassword(input));
  }

  const Password._(this.value);
}
