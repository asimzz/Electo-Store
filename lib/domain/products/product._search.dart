import 'package:electo_store/domain/products/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product._search.freezed.dart';

@freezed
abstract class ProductSearch with _$ProductSearch {
  const factory ProductSearch({
    @required Keyword keyword,
    @required RangeValues priceRangeValues,
    @required RangeValues ratingRangeValues,
  }) = _ProductSearch;

  factory ProductSearch.empty() => ProductSearch(
        keyword: Keyword(''),
        priceRangeValues: RangeValues(10, 1000),
        ratingRangeValues: RangeValues(0, 10),
      );
}
