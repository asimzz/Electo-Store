part of 'reviews_watcher_bloc.dart';

@freezed
abstract class ReviewsWatcherEvent with _$ReviewsWatcherEvent {
  const factory ReviewsWatcherEvent.watchAllStarted(
    String productId,
  ) = _WatchAllStarted;

  const factory ReviewsWatcherEvent.reviewsReceived(
    Either<ReviewFailure, ReviewsResultModel> failureOrReviews,
  ) = _ReviewsReceived;
}
