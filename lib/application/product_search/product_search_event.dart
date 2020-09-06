part of 'product_search_bloc.dart';

@freezed
abstract class ProductSearchEvent with _$ProductSearchEvent {
  const factory ProductSearchEvent.searchProductsWithName(
    String productQuery,
  ) = _SearchProductsWithName;
  const factory ProductSearchEvent.searchProductsWithNameAndPageNumber(
    String productQuery,
    String pageNumber,
  ) = _SearchProductsWithNameAndPageNumber;
}
