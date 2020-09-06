import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: '_id') @required String id,
    @required String name,
    @required String description,
    @required String company,
    @required String createdAt,
    @required String photo,
    @required int countInStock,
    @required double price,
    @Default(0.0) double averageRating,
    @required List<String> category,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
