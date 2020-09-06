// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$_$_UserDataFromJson(Map<String, dynamic> json) {
  return _$_UserData(
    avatar: json['avatar'] as String,
    role: json['role'] as String,
    id: json['_id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    birthDate: json['birthDate'] as String,
  );
}

Map<String, dynamic> _$_$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'role': instance.role,
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'birthDate': instance.birthDate,
    };
