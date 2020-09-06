// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResult _$_$_UserResultFromJson(Map<String, dynamic> json) {
  return _$_UserResult(
    data: json['data'] == null
        ? null
        : UserData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserResultToJson(_$_UserResult instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
