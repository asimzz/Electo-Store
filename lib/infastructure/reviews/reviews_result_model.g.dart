// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsResultModel _$_$_ReviewsResultModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReviewsResultModel(
    count: json['count'] as int,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ReviewsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ReviewsResultModelToJson(
        _$_ReviewsResultModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data,
    };
