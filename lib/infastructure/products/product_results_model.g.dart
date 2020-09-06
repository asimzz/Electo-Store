// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsResultModel _$_$_ProductsResultModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductsResultModel(
    count: json['count'] as int,
    pagination: json['pagination'] == null
        ? null
        : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ProductModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductsResultModelToJson(
        _$_ProductsResultModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pagination': instance.pagination,
      'data': instance.data,
    };
