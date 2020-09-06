// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

class _$ProductModelTearOff {
  const _$ProductModelTearOff();

// ignore: unused_element
  _ProductModel call(
      {@required @JsonKey(name: '_id') String id,
      @required String name,
      @required String description,
      @required String company,
      @required String createdAt,
      @required String photo,
      @required int countInStock,
      @required double price,
      double averageRating = 0.0,
      @required List<String> category}) {
    return _ProductModel(
      id: id,
      name: name,
      description: description,
      company: company,
      createdAt: createdAt,
      photo: photo,
      countInStock: countInStock,
      price: price,
      averageRating: averageRating,
      category: category,
    );
  }
}

// ignore: unused_element
const $ProductModel = _$ProductModelTearOff();

mixin _$ProductModel {
  @JsonKey(name: '_id')
  String get id;
  String get name;
  String get description;
  String get company;
  String get createdAt;
  String get photo;
  int get countInStock;
  double get price;
  double get averageRating;
  List<String> get category;

  Map<String, dynamic> toJson();
  $ProductModelCopyWith<ProductModel> get copyWith;
}

abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String description,
      String company,
      String createdAt,
      String photo,
      int countInStock,
      double price,
      double averageRating,
      List<String> category});
}

class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object company = freezed,
    Object createdAt = freezed,
    Object photo = freezed,
    Object countInStock = freezed,
    Object price = freezed,
    Object averageRating = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      company: company == freezed ? _value.company : company as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      photo: photo == freezed ? _value.photo : photo as String,
      countInStock:
          countInStock == freezed ? _value.countInStock : countInStock as int,
      price: price == freezed ? _value.price : price as double,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      category:
          category == freezed ? _value.category : category as List<String>,
    ));
  }
}

abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String description,
      String company,
      String createdAt,
      String photo,
      int countInStock,
      double price,
      double averageRating,
      List<String> category});
}

class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object company = freezed,
    Object createdAt = freezed,
    Object photo = freezed,
    Object countInStock = freezed,
    Object price = freezed,
    Object averageRating = freezed,
    Object category = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      company: company == freezed ? _value.company : company as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      photo: photo == freezed ? _value.photo : photo as String,
      countInStock:
          countInStock == freezed ? _value.countInStock : countInStock as int,
      price: price == freezed ? _value.price : price as double,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating as double,
      category:
          category == freezed ? _value.category : category as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {@required @JsonKey(name: '_id') this.id,
      @required this.name,
      @required this.description,
      @required this.company,
      @required this.createdAt,
      @required this.photo,
      @required this.countInStock,
      @required this.price,
      this.averageRating = 0.0,
      @required this.category})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(company != null),
        assert(createdAt != null),
        assert(photo != null),
        assert(countInStock != null),
        assert(price != null),
        assert(averageRating != null),
        assert(category != null);

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String company;
  @override
  final String createdAt;
  @override
  final String photo;
  @override
  final int countInStock;
  @override
  final double price;
  @JsonKey(defaultValue: 0.0)
  @override
  final double averageRating;
  @override
  final List<String> category;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, company: $company, createdAt: $createdAt, photo: $photo, countInStock: $countInStock, price: $price, averageRating: $averageRating, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.countInStock, countInStock) ||
                const DeepCollectionEquality()
                    .equals(other.countInStock, countInStock)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(countInStock) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {@required @JsonKey(name: '_id') String id,
      @required String name,
      @required String description,
      @required String company,
      @required String createdAt,
      @required String photo,
      @required int countInStock,
      @required double price,
      double averageRating,
      @required List<String> category}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get company;
  @override
  String get createdAt;
  @override
  String get photo;
  @override
  int get countInStock;
  @override
  double get price;
  @override
  double get averageRating;
  @override
  List<String> get category;
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith;
}
