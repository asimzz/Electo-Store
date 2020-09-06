part of 'reviews_action_bloc.dart';

@freezed
abstract class ReviewsActionState with _$ReviewsActionState {
  const factory ReviewsActionState({
    @required ReviewText reviewText,
    @required int rating,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption,
  }) = _ReviewsActionState;

  factory ReviewsActionState.initial() => ReviewsActionState(
        reviewText: ReviewText(''),
        rating: 0,
        isSubmitting: false,
        showErrorMessages: false,
        reviewFailureOrSuccessOption: none(),
      );
}
