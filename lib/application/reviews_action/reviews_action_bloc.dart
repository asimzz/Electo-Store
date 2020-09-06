import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/reviews/i_reviews_repository.dart';
import 'package:electo_store/domain/reviews/reviews_failure.dart';
import 'package:electo_store/domain/reviews/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reviews_action_event.dart';
part 'reviews_action_state.dart';
part 'reviews_action_bloc.freezed.dart';

@injectable
class ReviewsActionBloc extends Bloc<ReviewsActionEvent, ReviewsActionState> {
  final IReviewRepository reviewRepository;

  ReviewsActionBloc(this.reviewRepository)
      : super(ReviewsActionState.initial());

  @override
  Stream<ReviewsActionState> mapEventToState(
    ReviewsActionEvent event,
  ) async* {
    yield* event.map(
      reviewTextChanged: (e) async* {
        yield state.copyWith(
            reviewText: ReviewText(e.reviewTextStr),
            reviewFailureOrSuccessOption: none());
      },
      ratingChanged: (e) async* {
        yield state.copyWith(
            rating: e.ratingStr, reviewFailureOrSuccessOption: none());
      },
      addNewReviewPressed: (e) async* {
        Either<ReviewFailure, Unit> failureOrSuccess;

        final isReviewTextValid = state.reviewText.isValid();

        if (isReviewTextValid) {
          yield state.copyWith(
            isSubmitting: true,
            reviewFailureOrSuccessOption: none(),
          );
          failureOrSuccess = await reviewRepository.addNewReview(
            reviewText: state.reviewText,
            rating: state.rating,
            productId: e.productId,
          );

          yield state.copyWith(
            isSubmitting: false,
            reviewFailureOrSuccessOption: some(failureOrSuccess),
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          reviewFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
