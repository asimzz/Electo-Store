import 'package:electo_store/infastructure/products/pagination_model.dart';
import 'package:electo_store/infastructure/products/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_results_model.freezed.dart';
part 'product_results_model.g.dart';

@freezed
abstract class ProductsResultModel with _$ProductsResultModel {
  const factory ProductsResultModel({
    @nullable @required int count,
    @nullable @required PaginationModel pagination,
    @required List<ProductModel> data,
  }) = _ProductsResultModel;

  factory ProductsResultModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResultModelFromJson(json);
}
