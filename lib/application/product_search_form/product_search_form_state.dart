part of 'product_search_form_bloc.dart';

@freezed
abstract class ProductSearchFormState with _$ProductSearchFormState {
  const factory ProductSearchFormState({
    @required ProductSearch productSearch,
    @required bool showErrorMessages,
    @required bool isSearching,
    @required
        Option<Either<ProductFailure, ProductSearchResult>>
            searchFailureOrSuccessOption,
  }) = _ProductSearchFormState;

  factory ProductSearchFormState.initial() => ProductSearchFormState(
        productSearch: ProductSearch.empty(),
        showErrorMessages: false,
        isSearching: false,
        searchFailureOrSuccessOption: none(),
      );
}
