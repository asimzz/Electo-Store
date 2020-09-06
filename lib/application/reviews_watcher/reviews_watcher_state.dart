part of 'reviews_watcher_bloc.dart';

@freezed
abstract class ReviewsWatcherState with _$ReviewsWatcherState {
  const factory ReviewsWatcherState.initial() = _Initial;
  const factory ReviewsWatcherState.loadInProgress() = _LoadInProgress;
  const factory ReviewsWatcherState.loadSuccess(
      ReviewsResultModel reviewsResultModel) = _LoadSuccess;
  const factory ReviewsWatcherState.loadFailure(ReviewFailure reviewFailure) =
      _LoadFailure;
}
