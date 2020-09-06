// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product._search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductSearchTearOff {
  const _$ProductSearchTearOff();

// ignore: unused_element
  _ProductSearch call(
      {@required Keyword keyword,
      @required RangeValues priceRangeValues,
      @required RangeValues ratingRangeValues}) {
    return _ProductSearch(
      keyword: keyword,
      priceRangeValues: priceRangeValues,
      ratingRangeValues: ratingRangeValues,
    );
  }
}

// ignore: unused_element
const $ProductSearch = _$ProductSearchTearOff();

mixin _$ProductSearch {
  Keyword get keyword;
  RangeValues get priceRangeValues;
  RangeValues get ratingRangeValues;

  $ProductSearchCopyWith<ProductSearch> get copyWith;
}

abstract class $ProductSearchCopyWith<$Res> {
  factory $ProductSearchCopyWith(
          ProductSearch value, $Res Function(ProductSearch) then) =
      _$ProductSearchCopyWithImpl<$Res>;
  $Res call(
      {Keyword keyword,
      RangeValues priceRangeValues,
      RangeValues ratingRangeValues});
}

class _$ProductSearchCopyWithImpl<$Res>
    implements $ProductSearchCopyWith<$Res> {
  _$ProductSearchCopyWithImpl(this._value, this._then);

  final ProductSearch _value;
  // ignore: unused_field
  final $Res Function(ProductSearch) _then;

  @override
  $Res call({
    Object keyword = freezed,
    Object priceRangeValues = freezed,
    Object ratingRangeValues = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      priceRangeValues: priceRangeValues == freezed
          ? _value.priceRangeValues
          : priceRangeValues as RangeValues,
      ratingRangeValues: ratingRangeValues == freezed
          ? _value.ratingRangeValues
          : ratingRangeValues as RangeValues,
    ));
  }
}

abstract class _$ProductSearchCopyWith<$Res>
    implements $ProductSearchCopyWith<$Res> {
  factory _$ProductSearchCopyWith(
          _ProductSearch value, $Res Function(_ProductSearch) then) =
      __$ProductSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {Keyword keyword,
      RangeValues priceRangeValues,
      RangeValues ratingRangeValues});
}

class __$ProductSearchCopyWithImpl<$Res>
    extends _$ProductSearchCopyWithImpl<$Res>
    implements _$ProductSearchCopyWith<$Res> {
  __$ProductSearchCopyWithImpl(
      _ProductSearch _value, $Res Function(_ProductSearch) _then)
      : super(_value, (v) => _then(v as _ProductSearch));

  @override
  _ProductSearch get _value => super._value as _ProductSearch;

  @override
  $Res call({
    Object keyword = freezed,
    Object priceRangeValues = freezed,
    Object ratingRangeValues = freezed,
  }) {
    return _then(_ProductSearch(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      priceRangeValues: priceRangeValues == freezed
          ? _value.priceRangeValues
          : priceRangeValues as RangeValues,
      ratingRangeValues: ratingRangeValues == freezed
          ? _value.ratingRangeValues
          : ratingRangeValues as RangeValues,
    ));
  }
}

class _$_ProductSearch implements _ProductSearch {
  const _$_ProductSearch(
      {@required this.keyword,
      @required this.priceRangeValues,
      @required this.ratingRangeValues})
      : assert(keyword != null),
        assert(priceRangeValues != null),
        assert(ratingRangeValues != null);

  @override
  final Keyword keyword;
  @override
  final RangeValues priceRangeValues;
  @override
  final RangeValues ratingRangeValues;

  @override
  String toString() {
    return 'ProductSearch(keyword: $keyword, priceRangeValues: $priceRangeValues, ratingRangeValues: $ratingRangeValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSearch &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality()
                    .equals(other.keyword, keyword)) &&
            (identical(other.priceRangeValues, priceRangeValues) ||
                const DeepCollectionEquality()
                    .equals(other.priceRangeValues, priceRangeValues)) &&
            (identical(other.ratingRangeValues, ratingRangeValues) ||
                const DeepCollectionEquality()
                    .equals(other.ratingRangeValues, ratingRangeValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(priceRangeValues) ^
      const DeepCollectionEquality().hash(ratingRangeValues);

  @override
  _$ProductSearchCopyWith<_ProductSearch> get copyWith =>
      __$ProductSearchCopyWithImpl<_ProductSearch>(this, _$identity);
}

abstract class _ProductSearch implements ProductSearch {
  const factory _ProductSearch(
      {@required Keyword keyword,
      @required RangeValues priceRangeValues,
      @required RangeValues ratingRangeValues}) = _$_ProductSearch;

  @override
  Keyword get keyword;
  @override
  RangeValues get priceRangeValues;
  @override
  RangeValues get ratingRangeValues;
  @override
  _$ProductSearchCopyWith<_ProductSearch> get copyWith;
}
