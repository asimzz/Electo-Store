// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsModel _$_$_ReviewsModelFromJson(Map<String, dynamic> json) {
  return _$_ReviewsModel(
    id: json['_id'] as String,
    text: json['text'] as String,
    rating: json['rating'] as int,
    productId: json['product'] as String,
    user: json['user'] == null
        ? null
        : UserData.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'rating': instance.rating,
      'product': instance.productId,
      'user': instance.user,
    };
