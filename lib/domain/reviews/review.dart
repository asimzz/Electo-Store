import 'package:electo_store/domain/reviews/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review {
  const factory Review({
    @required ReviewText reviewBody,
    @required String rate,
    @required String produtId,
  }) = _Review;
}
