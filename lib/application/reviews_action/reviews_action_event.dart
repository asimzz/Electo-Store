part of 'reviews_action_bloc.dart';

@freezed
abstract class ReviewsActionEvent with _$ReviewsActionEvent {
  const factory ReviewsActionEvent.reviewTextChanged(
    String reviewTextStr,
  ) = _ReviewTextChanged;
  const factory ReviewsActionEvent.ratingChanged(
    int ratingStr,
  ) = _RatingChanged;
  const factory ReviewsActionEvent.addNewReviewPressed(
    String productId,
  ) = _AddNewReviewPressed;
}
