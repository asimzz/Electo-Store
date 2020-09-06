// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductSearchResult _$ProductSearchResultFromJson(Map<String, dynamic> json) {
  return _ProductSearchResult.fromJson(json);
}

class _$ProductSearchResultTearOff {
  const _$ProductSearchResultTearOff();

// ignore: unused_element
  _ProductSearchResult call({@required List<ProductModel> data}) {
    return _ProductSearchResult(
      data: data,
    );
  }
}

// ignore: unused_element
const $ProductSearchResult = _$ProductSearchResultTearOff();

mixin _$ProductSearchResult {
  List<ProductModel> get data;

  Map<String, dynamic> toJson();
  $ProductSearchResultCopyWith<ProductSearchResult> get copyWith;
}

abstract class $ProductSearchResultCopyWith<$Res> {
  factory $ProductSearchResultCopyWith(
          ProductSearchResult value, $Res Function(ProductSearchResult) then) =
      _$ProductSearchResultCopyWithImpl<$Res>;
  $Res call({List<ProductModel> data});
}

class _$ProductSearchResultCopyWithImpl<$Res>
    implements $ProductSearchResultCopyWith<$Res> {
  _$ProductSearchResultCopyWithImpl(this._value, this._then);

  final ProductSearchResult _value;
  // ignore: unused_field
  final $Res Function(ProductSearchResult) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<ProductModel>,
    ));
  }
}

abstract class _$ProductSearchResultCopyWith<$Res>
    implements $ProductSearchResultCopyWith<$Res> {
  factory _$ProductSearchResultCopyWith(_ProductSearchResult value,
          $Res Function(_ProductSearchResult) then) =
      __$ProductSearchResultCopyWithImpl<$Res>;
  @override
  $Res call({List<ProductModel> data});
}

class __$ProductSearchResultCopyWithImpl<$Res>
    extends _$ProductSearchResultCopyWithImpl<$Res>
    implements _$ProductSearchResultCopyWith<$Res> {
  __$ProductSearchResultCopyWithImpl(
      _ProductSearchResult _value, $Res Function(_ProductSearchResult) _then)
      : super(_value, (v) => _then(v as _ProductSearchResult));

  @override
  _ProductSearchResult get _value => super._value as _ProductSearchResult;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_ProductSearchResult(
      data: data == freezed ? _value.data : data as List<ProductModel>,
    ));
  }
}

@JsonSerializable()
class _$_ProductSearchResult implements _ProductSearchResult {
  const _$_ProductSearchResult({@required this.data}) : assert(data != null);

  factory _$_ProductSearchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductSearchResultFromJson(json);

  @override
  final List<ProductModel> data;

  @override
  String toString() {
    return 'ProductSearchResult(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSearchResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$ProductSearchResultCopyWith<_ProductSearchResult> get copyWith =>
      __$ProductSearchResultCopyWithImpl<_ProductSearchResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductSearchResultToJson(this);
  }
}

abstract class _ProductSearchResult implements ProductSearchResult {
  const factory _ProductSearchResult({@required List<ProductModel> data}) =
      _$_ProductSearchResult;

  factory _ProductSearchResult.fromJson(Map<String, dynamic> json) =
      _$_ProductSearchResult.fromJson;

  @override
  List<ProductModel> get data;
  @override
  _$ProductSearchResultCopyWith<_ProductSearchResult> get copyWith;
}
