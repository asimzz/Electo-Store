// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewTearOff {
  const _$ReviewTearOff();

// ignore: unused_element
  _Review call(
      {@required ReviewText reviewBody,
      @required String rate,
      @required String produtId}) {
    return _Review(
      reviewBody: reviewBody,
      rate: rate,
      produtId: produtId,
    );
  }
}

// ignore: unused_element
const $Review = _$ReviewTearOff();

mixin _$Review {
  ReviewText get reviewBody;
  String get rate;
  String get produtId;

  $ReviewCopyWith<Review> get copyWith;
}

abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call({ReviewText reviewBody, String rate, String produtId});
}

class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object reviewBody = freezed,
    Object rate = freezed,
    Object produtId = freezed,
  }) {
    return _then(_value.copyWith(
      reviewBody:
          reviewBody == freezed ? _value.reviewBody : reviewBody as ReviewText,
      rate: rate == freezed ? _value.rate : rate as String,
      produtId: produtId == freezed ? _value.produtId : produtId as String,
    ));
  }
}

abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call({ReviewText reviewBody, String rate, String produtId});
}

class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object reviewBody = freezed,
    Object rate = freezed,
    Object produtId = freezed,
  }) {
    return _then(_Review(
      reviewBody:
          reviewBody == freezed ? _value.reviewBody : reviewBody as ReviewText,
      rate: rate == freezed ? _value.rate : rate as String,
      produtId: produtId == freezed ? _value.produtId : produtId as String,
    ));
  }
}

class _$_Review implements _Review {
  const _$_Review(
      {@required this.reviewBody, @required this.rate, @required this.produtId})
      : assert(reviewBody != null),
        assert(rate != null),
        assert(produtId != null);

  @override
  final ReviewText reviewBody;
  @override
  final String rate;
  @override
  final String produtId;

  @override
  String toString() {
    return 'Review(reviewBody: $reviewBody, rate: $rate, produtId: $produtId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.reviewBody, reviewBody) ||
                const DeepCollectionEquality()
                    .equals(other.reviewBody, reviewBody)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.produtId, produtId) ||
                const DeepCollectionEquality()
                    .equals(other.produtId, produtId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviewBody) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(produtId);

  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);
}

abstract class _Review implements Review {
  const factory _Review(
      {@required ReviewText reviewBody,
      @required String rate,
      @required String produtId}) = _$_Review;

  @override
  ReviewText get reviewBody;
  @override
  String get rate;
  @override
  String get produtId;
  @override
  _$ReviewCopyWith<_Review> get copyWith;
}
