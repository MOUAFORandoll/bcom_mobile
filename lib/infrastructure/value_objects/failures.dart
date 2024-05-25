import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.passwordWithoutSpecialChar({
    required T failedValue,
  }) = PasswordWithoutSpecialChar<T>;
  const factory ValueFailure.passwordWithoutNumber({
    required T failedValue,
  }) = PasswordWithoutNumber<T>;
}
