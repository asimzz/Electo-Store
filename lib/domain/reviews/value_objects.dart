import 'package:dartz/dartz.dart';

import '../core/errors/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class ReviewText extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory ReviewText(String input) {
    assert(input != null);
    return ReviewText._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ReviewText._(this.value);
}
