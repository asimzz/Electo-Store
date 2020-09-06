part of 'product_watcher_bloc.dart';

@freezed
abstract class ProductWatcherEvent with _$ProductWatcherEvent {
  const factory ProductWatcherEvent.watchProducts() = _WatchProducts;
  const factory ProductWatcherEvent.watchProductsWithPageNumberSpecified(
    String pageNumber,
  ) = _WatchProductsWithPageNumberSpecified;
  const factory ProductWatcherEvent.watchProductsWithSortTypeSpecified(
    String sortField,
    String sortType,
  ) = _WatchProductsWithSortTypeSpecified;
  const factory ProductWatcherEvent.watchProductsWithPageNumberAndSortType(
    String pageNumber,
    String sortType,
  ) = _WatchProductsWithPageNumberAndSortType;
}
