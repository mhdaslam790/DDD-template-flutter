import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

/// Represents validation failures for value objects
/// These are distinct from business logic failures
@freezed
sealed class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;

  const factory ValueFailure.emptyValue({required T failedValue}) =
      EmptyValue<T>;

  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.multiline({required T failedValue}) = Multiline<T>;

  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidPhoneNumber({required T failedValue}) =
      InvalidPhoneNumber<T>;
}
