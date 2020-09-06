import 'package:electo_store/infastructure/products/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_search_result.freezed.dart';
part 'product_search_result.g.dart';

@freezed
abstract class ProductSearchResult with _$ProductSearchResult {
  const factory ProductSearchResult({
    @required List<ProductModel> data,
  }) = _ProductSearchResult;
  factory ProductSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchResultFromJson(json);
}
