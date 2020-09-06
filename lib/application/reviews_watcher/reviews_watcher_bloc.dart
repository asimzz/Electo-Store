import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/reviews/i_reviews_repository.dart';
import 'package:electo_store/domain/reviews/reviews_failure.dart';
import 'package:electo_store/infastructure/reviews/reviews_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reviews_watcher_event.dart';
part 'reviews_watcher_state.dart';
part 'reviews_watcher_bloc.freezed.dart';

@injectable
class ReviewsWatcherBloc
    extends Bloc<ReviewsWatcherEvent, ReviewsWatcherState> {
  final IReviewRepository _reviewRepository;
  ReviewsWatcherBloc(this._reviewRepository)
      : super(ReviewsWatcherState.initial());

  StreamSubscription<Either<ReviewFailure, ReviewsResultModel>>
      _reviewStreamSubscription;

  @override
  Stream<ReviewsWatcherState> mapEventToState(
    ReviewsWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ReviewsWatcherState.loadInProgress();
      await _reviewStreamSubscription?.cancel();
      _reviewStreamSubscription = _reviewRepository
          .watchProductReviews(productId: e.productId)
          .listen((failureOrReviews) =>
              add(ReviewsWatcherEvent.reviewsReceived(failureOrReviews)));
    }, reviewsReceived: (e) async* {
      yield e.failureOrReviews.fold(
        (failure) => ReviewsWatcherState.loadFailure(failure),
        (reviews) => ReviewsWatcherState.loadSuccess(reviews),
      );
    });
  }
}
