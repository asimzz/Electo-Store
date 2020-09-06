// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

class _$ReviewsModelTearOff {
  const _$ReviewsModelTearOff();

// ignore: unused_element
  _ReviewsModel call(
      {@required @JsonKey(name: '_id') String id,
      @required String text,
      @required int rating,
      @required @JsonKey(name: 'product') String productId,
      @required UserData user}) {
    return _ReviewsModel(
      id: id,
      text: text,
      rating: rating,
      productId: productId,
      user: user,
    );
  }
}

// ignore: unused_element
const $ReviewsModel = _$ReviewsModelTearOff();

mixin _$ReviewsModel {
  @JsonKey(name: '_id')
  String get id;
  String get text;
  int get rating;
  @JsonKey(name: 'product')
  String get productId;
  UserData get user;

  Map<String, dynamic> toJson();
  $ReviewsModelCopyWith<ReviewsModel> get copyWith;
}

abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String text,
      int rating,
      @JsonKey(name: 'product') String productId,
      UserData user});

  $UserDataCopyWith<$Res> get user;
}

class _$ReviewsModelCopyWithImpl<$Res> implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  final ReviewsModel _value;
  // ignore: unused_field
  final $Res Function(ReviewsModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object rating = freezed,
    Object productId = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      rating: rating == freezed ? _value.rating : rating as int,
      productId: productId == freezed ? _value.productId : productId as String,
      user: user == freezed ? _value.user : user as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$ReviewsModelCopyWith(
          _ReviewsModel value, $Res Function(_ReviewsModel) then) =
      __$ReviewsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String text,
      int rating,
      @JsonKey(name: 'product') String productId,
      UserData user});

  @override
  $UserDataCopyWith<$Res> get user;
}

class __$ReviewsModelCopyWithImpl<$Res> extends _$ReviewsModelCopyWithImpl<$Res>
    implements _$ReviewsModelCopyWith<$Res> {
  __$ReviewsModelCopyWithImpl(
      _ReviewsModel _value, $Res Function(_ReviewsModel) _then)
      : super(_value, (v) => _then(v as _ReviewsModel));

  @override
  _ReviewsModel get _value => super._value as _ReviewsModel;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object rating = freezed,
    Object productId = freezed,
    Object user = freezed,
  }) {
    return _then(_ReviewsModel(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      rating: rating == freezed ? _value.rating : rating as int,
      productId: productId == freezed ? _value.productId : productId as String,
      user: user == freezed ? _value.user : user as UserData,
    ));
  }
}

@JsonSerializable()
class _$_ReviewsModel implements _ReviewsModel {
  const _$_ReviewsModel(
      {@required @JsonKey(name: '_id') this.id,
      @required this.text,
      @required this.rating,
      @required @JsonKey(name: 'product') this.productId,
      @required this.user})
      : assert(id != null),
        assert(text != null),
        assert(rating != null),
        assert(productId != null),
        assert(user != null);

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String text;
  @override
  final int rating;
  @override
  @JsonKey(name: 'product')
  final String productId;
  @override
  final UserData user;

  @override
  String toString() {
    return 'ReviewsModel(id: $id, text: $text, rating: $rating, productId: $productId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith =>
      __$ReviewsModelCopyWithImpl<_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsModelToJson(this);
  }
}

abstract class _ReviewsModel implements ReviewsModel {
  const factory _ReviewsModel(
      {@required @JsonKey(name: '_id') String id,
      @required String text,
      @required int rating,
      @required @JsonKey(name: 'product') String productId,
      @required UserData user}) = _$_ReviewsModel;

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get text;
  @override
  int get rating;
  @override
  @JsonKey(name: 'product')
  String get productId;
  @override
  UserData get user;
  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith;
}
