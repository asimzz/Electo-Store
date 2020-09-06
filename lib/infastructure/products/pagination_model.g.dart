// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationModel _$_$_PaginationModelFromJson(Map<String, dynamic> json) {
  return _$_PaginationModel(
    nextPage: json['next'] == null
        ? null
        : NextOrPreviousPage.fromJson(json['next'] as Map<String, dynamic>),
    currentPage: json['current'] == null
        ? null
        : NextOrPreviousPage.fromJson(json['current'] as Map<String, dynamic>),
    previousPage: json['prev'] == null
        ? null
        : NextOrPreviousPage.fromJson(json['prev'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PaginationModelToJson(_$_PaginationModel instance) =>
    <String, dynamic>{
      'next': instance.nextPage,
      'current': instance.currentPage,
      'prev': instance.previousPage,
    };
