part of 'product_watcher_bloc.dart';

@freezed
abstract class ProductWatcherState with _$ProductWatcherState {
  const factory ProductWatcherState.initial() = _Initial;
  const factory ProductWatcherState.loadInProgress() = _LoadInProgress;
  const factory ProductWatcherState.loadSuccess(
    ProductsResultModel productsResultModel,
  ) = _LoadSuccess;
  const factory ProductWatcherState.loadFailure(
    ProductFailure productFailure,
  ) = _LoadFailure;
}
