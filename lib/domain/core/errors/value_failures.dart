import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    @required T failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;

  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.invalidLocation({
    @required T failedValue,
  }) = InvalidLocation<T>;
}
