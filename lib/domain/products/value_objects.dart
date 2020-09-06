import 'package:dartz/dartz.dart';

import '../core/errors/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Keyword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory Keyword(String input) {
    assert(input != null);
    return Keyword._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const Keyword._(this.value);
}
