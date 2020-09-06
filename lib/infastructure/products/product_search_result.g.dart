// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSearchResult _$_$_ProductSearchResultFromJson(
    Map<String, dynamic> json) {
  return _$_ProductSearchResult(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ProductModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductSearchResultToJson(
        _$_ProductSearchResult instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
