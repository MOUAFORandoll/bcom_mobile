import 'package:dartz/dartz.dart';
import 'package:Bcom/infrastructure/_commons/value_object.dart';

import 'failures.dart';
import 'value_validators.dart';

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    return Phone._(
      validatePhone(input),
    );
  }

  const Phone._(this.value);
}
