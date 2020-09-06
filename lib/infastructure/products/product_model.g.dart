// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
  return _$_ProductModel(
    id: json['_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    company: json['company'] as String,
    createdAt: json['createdAt'] as String,
    photo: json['photo'] as String,
    countInStock: json['countInStock'] as int,
    price: (json['price'] as num)?.toDouble(),
    averageRating: (json['averageRating'] as num)?.toDouble() ?? 0.0,
    category: (json['category'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'company': instance.company,
      'createdAt': instance.createdAt,
      'photo': instance.photo,
      'countInStock': instance.countInStock,
      'price': instance.price,
      'averageRating': instance.averageRating,
      'category': instance.category,
    };
