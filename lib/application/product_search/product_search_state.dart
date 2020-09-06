part of 'product_search_bloc.dart';

@freezed
abstract class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState.initial() = _Initial;
  const factory ProductSearchState.searchInProgress() = _SearchInProgress;
  const factory ProductSearchState.searchSuccess(
    ProductsResultModel productsResultModel,
  ) = _SearchSuccess;
  const factory ProductSearchState.searchFailure(
    ProductFailure productFailure,
  ) = _SearchFailure;
}
