// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserResult _$UserResultFromJson(Map<String, dynamic> json) {
  return _UserResult.fromJson(json);
}

class _$UserResultTearOff {
  const _$UserResultTearOff();

// ignore: unused_element
  _UserResult call({@required UserData data}) {
    return _UserResult(
      data: data,
    );
  }
}

// ignore: unused_element
const $UserResult = _$UserResultTearOff();

mixin _$UserResult {
  UserData get data;

  Map<String, dynamic> toJson();
  $UserResultCopyWith<UserResult> get copyWith;
}

abstract class $UserResultCopyWith<$Res> {
  factory $UserResultCopyWith(
          UserResult value, $Res Function(UserResult) then) =
      _$UserResultCopyWithImpl<$Res>;
  $Res call({UserData data});

  $UserDataCopyWith<$Res> get data;
}

class _$UserResultCopyWithImpl<$Res> implements $UserResultCopyWith<$Res> {
  _$UserResultCopyWithImpl(this._value, this._then);

  final UserResult _value;
  // ignore: unused_field
  final $Res Function(UserResult) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

abstract class _$UserResultCopyWith<$Res> implements $UserResultCopyWith<$Res> {
  factory _$UserResultCopyWith(
          _UserResult value, $Res Function(_UserResult) then) =
      __$UserResultCopyWithImpl<$Res>;
  @override
  $Res call({UserData data});

  @override
  $UserDataCopyWith<$Res> get data;
}

class __$UserResultCopyWithImpl<$Res> extends _$UserResultCopyWithImpl<$Res>
    implements _$UserResultCopyWith<$Res> {
  __$UserResultCopyWithImpl(
      _UserResult _value, $Res Function(_UserResult) _then)
      : super(_value, (v) => _then(v as _UserResult));

  @override
  _UserResult get _value => super._value as _UserResult;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_UserResult(
      data: data == freezed ? _value.data : data as UserData,
    ));
  }
}

@JsonSerializable()
class _$_UserResult extends _UserResult {
  const _$_UserResult({@required this.data})
      : assert(data != null),
        super._();

  factory _$_UserResult.fromJson(Map<String, dynamic> json) =>
      _$_$_UserResultFromJson(json);

  @override
  final UserData data;

  @override
  String toString() {
    return 'UserResult(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$UserResultCopyWith<_UserResult> get copyWith =>
      __$UserResultCopyWithImpl<_UserResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserResultToJson(this);
  }
}

abstract class _UserResult extends UserResult {
  const _UserResult._() : super._();
  const factory _UserResult({@required UserData data}) = _$_UserResult;

  factory _UserResult.fromJson(Map<String, dynamic> json) =
      _$_UserResult.fromJson;

  @override
  UserData get data;
  @override
  _$UserResultCopyWith<_UserResult> get copyWith;
}
