// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'next_or_previous_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NextOrPreviousPage _$NextOrPreviousPageFromJson(Map<String, dynamic> json) {
  return _NextOrPreviousPage.fromJson(json);
}

class _$NextOrPreviousPageTearOff {
  const _$NextOrPreviousPageTearOff();

// ignore: unused_element
  _NextOrPreviousPage call({@required int page, @required int limit}) {
    return _NextOrPreviousPage(
      page: page,
      limit: limit,
    );
  }
}

// ignore: unused_element
const $NextOrPreviousPage = _$NextOrPreviousPageTearOff();

mixin _$NextOrPreviousPage {
  int get page;
  int get limit;

  Map<String, dynamic> toJson();
  $NextOrPreviousPageCopyWith<NextOrPreviousPage> get copyWith;
}

abstract class $NextOrPreviousPageCopyWith<$Res> {
  factory $NextOrPreviousPageCopyWith(
          NextOrPreviousPage value, $Res Function(NextOrPreviousPage) then) =
      _$NextOrPreviousPageCopyWithImpl<$Res>;
  $Res call({int page, int limit});
}

class _$NextOrPreviousPageCopyWithImpl<$Res>
    implements $NextOrPreviousPageCopyWith<$Res> {
  _$NextOrPreviousPageCopyWithImpl(this._value, this._then);

  final NextOrPreviousPage _value;
  // ignore: unused_field
  final $Res Function(NextOrPreviousPage) _then;

  @override
  $Res call({
    Object page = freezed,
    Object limit = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

abstract class _$NextOrPreviousPageCopyWith<$Res>
    implements $NextOrPreviousPageCopyWith<$Res> {
  factory _$NextOrPreviousPageCopyWith(
          _NextOrPreviousPage value, $Res Function(_NextOrPreviousPage) then) =
      __$NextOrPreviousPageCopyWithImpl<$Res>;
  @override
  $Res call({int page, int limit});
}

class __$NextOrPreviousPageCopyWithImpl<$Res>
    extends _$NextOrPreviousPageCopyWithImpl<$Res>
    implements _$NextOrPreviousPageCopyWith<$Res> {
  __$NextOrPreviousPageCopyWithImpl(
      _NextOrPreviousPage _value, $Res Function(_NextOrPreviousPage) _then)
      : super(_value, (v) => _then(v as _NextOrPreviousPage));

  @override
  _NextOrPreviousPage get _value => super._value as _NextOrPreviousPage;

  @override
  $Res call({
    Object page = freezed,
    Object limit = freezed,
  }) {
    return _then(_NextOrPreviousPage(
      page: page == freezed ? _value.page : page as int,
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

@JsonSerializable()
class _$_NextOrPreviousPage implements _NextOrPreviousPage {
  const _$_NextOrPreviousPage({@required this.page, @required this.limit})
      : assert(page != null),
        assert(limit != null);

  factory _$_NextOrPreviousPage.fromJson(Map<String, dynamic> json) =>
      _$_$_NextOrPreviousPageFromJson(json);

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'NextOrPreviousPage(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextOrPreviousPage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(limit);

  @override
  _$NextOrPreviousPageCopyWith<_NextOrPreviousPage> get copyWith =>
      __$NextOrPreviousPageCopyWithImpl<_NextOrPreviousPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NextOrPreviousPageToJson(this);
  }
}

abstract class _NextOrPreviousPage implements NextOrPreviousPage {
  const factory _NextOrPreviousPage({@required int page, @required int limit}) =
      _$_NextOrPreviousPage;

  factory _NextOrPreviousPage.fromJson(Map<String, dynamic> json) =
      _$_NextOrPreviousPage.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  _$NextOrPreviousPageCopyWith<_NextOrPreviousPage> get copyWith;
}
