import 'package:dartz/dartz.dart';

import '../core/errors/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input).flatMap(validateStringNotEmpty),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input).flatMap(validateStringNotEmpty),
    );
  }

  const Password._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateUsername(input).flatMap(validateStringNotEmpty),
    );
  }

  const Username._(this.value);
}

class BirthDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BirthDate(String input) {
    assert(input != null);
    return BirthDate._(
      validateStringNotEmpty(input),
    );
  }

  const BirthDate._(this.value);
}
