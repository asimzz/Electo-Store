// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@required String avatar,
      @required String role,
      @required @JsonKey(name: '_id') String id,
      @required String name,
      @required String email,
      @required String birthDate}) {
    return _UserData(
      avatar: avatar,
      role: role,
      id: id,
      name: name,
      email: email,
      birthDate: birthDate,
    );
  }
}

// ignore: unused_element
const $UserData = _$UserDataTearOff();

mixin _$UserData {
  String get avatar;
  String get role;
  @JsonKey(name: '_id')
  String get id;
  String get name;
  String get email;
  String get birthDate;

  Map<String, dynamic> toJson();
  $UserDataCopyWith<UserData> get copyWith;
}

abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String avatar,
      String role,
      @JsonKey(name: '_id') String id,
      String name,
      String email,
      String birthDate});
}

class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object avatar = freezed,
    Object role = freezed,
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      role: role == freezed ? _value.role : role as String,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
    ));
  }
}

abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String avatar,
      String role,
      @JsonKey(name: '_id') String id,
      String name,
      String email,
      String birthDate});
}

class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object avatar = freezed,
    Object role = freezed,
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object birthDate = freezed,
  }) {
    return _then(_UserData(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      role: role == freezed ? _value.role : role as String,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
    ));
  }
}

@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {@required this.avatar,
      @required this.role,
      @required @JsonKey(name: '_id') this.id,
      @required this.name,
      @required this.email,
      @required this.birthDate})
      : assert(avatar != null),
        assert(role != null),
        assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(birthDate != null);

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  final String avatar;
  @override
  final String role;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String birthDate;

  @override
  String toString() {
    return 'UserData(avatar: $avatar, role: $role, id: $id, name: $name, email: $email, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthDate);

  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@required String avatar,
      @required String role,
      @required @JsonKey(name: '_id') String id,
      @required String name,
      @required String email,
      @required String birthDate}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get avatar;
  @override
  String get role;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get birthDate;
  @override
  _$UserDataCopyWith<_UserData> get copyWith;
}
