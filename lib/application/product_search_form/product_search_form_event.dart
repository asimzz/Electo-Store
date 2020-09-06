part of 'product_search_form_bloc.dart';

@freezed
abstract class ProductSearchFormEvent with _$ProductSearchFormEvent {
  const factory ProductSearchFormEvent.keywordChanged(
    String keywordStr,
  ) = _KeywordChanged;
  const factory ProductSearchFormEvent.priceRangeValuesChanged(
    RangeValues priceRangeValues,
  ) = _PriceRangeValuesChanged;
  const factory ProductSearchFormEvent.ratingRangeValuesChanged(
    RangeValues ratingRangeValues,
  ) = _RatingRangeValuesChanged;
  const factory ProductSearchFormEvent.productSearchButtonPressed() =
      _ProductSearchButtonPressed;
}
