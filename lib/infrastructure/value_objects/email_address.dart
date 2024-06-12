import 'package:Bcom/infrastructure/_commons/value_object.dart';
import 'package:dartz/dartz.dart';
import 'failures.dart';
import 'value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
