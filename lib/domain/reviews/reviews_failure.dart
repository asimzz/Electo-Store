import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_failure.freezed.dart';

@freezed
abstract class ReviewFailure with _$ReviewFailure {
  const factory ReviewFailure.serverError() = ServerError;
  const factory ReviewFailure.notAuthorizedError() = NotAuthorizedError;
  const factory ReviewFailure.badConnectionError() = BadConnectionError;
  const factory ReviewFailure.dublicateReview() = DublicateReview;
  const factory ReviewFailure.unexpectedError() = UnexpectedError;
}
