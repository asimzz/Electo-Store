// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductsResultModel _$ProductsResultModelFromJson(Map<String, dynamic> json) {
  return _ProductsResultModel.fromJson(json);
}

class _$ProductsResultModelTearOff {
  const _$ProductsResultModelTearOff();

// ignore: unused_element
  _ProductsResultModel call(
      {@required @nullable int count,
      @required @nullable PaginationModel pagination,
      @required List<ProductModel> data}) {
    return _ProductsResultModel(
      count: count,
      pagination: pagination,
      data: data,
    );
  }
}

// ignore: unused_element
const $ProductsResultModel = _$ProductsResultModelTearOff();

mixin _$ProductsResultModel {
  @nullable
  int get count;
  @nullable
  PaginationModel get pagination;
  List<ProductModel> get data;

  Map<String, dynamic> toJson();
  $ProductsResultModelCopyWith<ProductsResultModel> get copyWith;
}

abstract class $ProductsResultModelCopyWith<$Res> {
  factory $ProductsResultModelCopyWith(
          ProductsResultModel value, $Res Function(ProductsResultModel) then) =
      _$ProductsResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int count,
      @nullable PaginationModel pagination,
      List<ProductModel> data});

  $PaginationModelCopyWith<$Res> get pagination;
}

class _$ProductsResultModelCopyWithImpl<$Res>
    implements $ProductsResultModelCopyWith<$Res> {
  _$ProductsResultModelCopyWithImpl(this._value, this._then);

  final ProductsResultModel _value;
  // ignore: unused_field
  final $Res Function(ProductsResultModel) _then;

  @override
  $Res call({
    Object count = freezed,
    Object pagination = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination as PaginationModel,
      data: data == freezed ? _value.data : data as List<ProductModel>,
    ));
  }

  @override
  $PaginationModelCopyWith<$Res> get pagination {
    if (_value.pagination == null) {
      return null;
    }
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

abstract class _$ProductsResultModelCopyWith<$Res>
    implements $ProductsResultModelCopyWith<$Res> {
  factory _$ProductsResultModelCopyWith(_ProductsResultModel value,
          $Res Function(_ProductsResultModel) then) =
      __$ProductsResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int count,
      @nullable PaginationModel pagination,
      List<ProductModel> data});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
}

class __$ProductsResultModelCopyWithImpl<$Res>
    extends _$ProductsResultModelCopyWithImpl<$Res>
    implements _$ProductsResultModelCopyWith<$Res> {
  __$ProductsResultModelCopyWithImpl(
      _ProductsResultModel _value, $Res Function(_ProductsResultModel) _then)
      : super(_value, (v) => _then(v as _ProductsResultModel));

  @override
  _ProductsResultModel get _value => super._value as _ProductsResultModel;

  @override
  $Res call({
    Object count = freezed,
    Object pagination = freezed,
    Object data = freezed,
  }) {
    return _then(_ProductsResultModel(
      count: count == freezed ? _value.count : count as int,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination as PaginationModel,
      data: data == freezed ? _value.data : data as List<ProductModel>,
    ));
  }
}

@JsonSerializable()
class _$_ProductsResultModel implements _ProductsResultModel {
  const _$_ProductsResultModel(
      {@required @nullable this.count,
      @required @nullable this.pagination,
      @required this.data})
      : assert(data != null);

  factory _$_ProductsResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductsResultModelFromJson(json);

  @override
  @nullable
  final int count;
  @override
  @nullable
  final PaginationModel pagination;
  @override
  final List<ProductModel> data;

  @override
  String toString() {
    return 'ProductsResultModel(count: $count, pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductsResultModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(pagination) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ProductsResultModelCopyWith<_ProductsResultModel> get copyWith =>
      __$ProductsResultModelCopyWithImpl<_ProductsResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductsResultModelToJson(this);
  }
}

abstract class _ProductsResultModel implements ProductsResultModel {
  const factory _ProductsResultModel(
      {@required @nullable int count,
      @required @nullable PaginationModel pagination,
      @required List<ProductModel> data}) = _$_ProductsResultModel;

  factory _ProductsResultModel.fromJson(Map<String, dynamic> json) =
      _$_ProductsResultModel.fromJson;

  @override
  @nullable
  int get count;
  @override
  @nullable
  PaginationModel get pagination;
  @override
  List<ProductModel> get data;
  @override
  _$ProductsResultModelCopyWith<_ProductsResultModel> get copyWith;
}
