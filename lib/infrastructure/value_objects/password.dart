import 'package:Bcom/infrastructure/_commons/value_object.dart';
import 'package:dartz/dartz.dart'; 

import 'failures.dart';
import 'value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
