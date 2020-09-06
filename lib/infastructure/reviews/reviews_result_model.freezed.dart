// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReviewsResultModel _$ReviewsResultModelFromJson(Map<String, dynamic> json) {
  return _ReviewsResultModel.fromJson(json);
}

class _$ReviewsResultModelTearOff {
  const _$ReviewsResultModelTearOff();

// ignore: unused_element
  _ReviewsResultModel call(
      {@required int count, @required List<ReviewsModel> data}) {
    return _ReviewsResultModel(
      count: count,
      data: data,
    );
  }
}

// ignore: unused_element
const $ReviewsResultModel = _$ReviewsResultModelTearOff();

mixin _$ReviewsResultModel {
  int get count;
  List<ReviewsModel> get data;

  Map<String, dynamic> toJson();
  $ReviewsResultModelCopyWith<ReviewsResultModel> get copyWith;
}

abstract class $ReviewsResultModelCopyWith<$Res> {
  factory $ReviewsResultModelCopyWith(
          ReviewsResultModel value, $Res Function(ReviewsResultModel) then) =
      _$ReviewsResultModelCopyWithImpl<$Res>;
  $Res call({int count, List<ReviewsModel> data});
}

class _$ReviewsResultModelCopyWithImpl<$Res>
    implements $ReviewsResultModelCopyWith<$Res> {
  _$ReviewsResultModelCopyWithImpl(this._value, this._then);

  final ReviewsResultModel _value;
  // ignore: unused_field
  final $Res Function(ReviewsResultModel) _then;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<ReviewsModel>,
    ));
  }
}

abstract class _$ReviewsResultModelCopyWith<$Res>
    implements $ReviewsResultModelCopyWith<$Res> {
  factory _$ReviewsResultModelCopyWith(
          _ReviewsResultModel value, $Res Function(_ReviewsResultModel) then) =
      __$ReviewsResultModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<ReviewsModel> data});
}

class __$ReviewsResultModelCopyWithImpl<$Res>
    extends _$ReviewsResultModelCopyWithImpl<$Res>
    implements _$ReviewsResultModelCopyWith<$Res> {
  __$ReviewsResultModelCopyWithImpl(
      _ReviewsResultModel _value, $Res Function(_ReviewsResultModel) _then)
      : super(_value, (v) => _then(v as _ReviewsResultModel));

  @override
  _ReviewsResultModel get _value => super._value as _ReviewsResultModel;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_ReviewsResultModel(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<ReviewsModel>,
    ));
  }
}

@JsonSerializable()
class _$_ReviewsResultModel implements _ReviewsResultModel {
  const _$_ReviewsResultModel({@required this.count, @required this.data})
      : assert(count != null),
        assert(data != null);

  factory _$_ReviewsResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsResultModelFromJson(json);

  @override
  final int count;
  @override
  final List<ReviewsModel> data;

  @override
  String toString() {
    return 'ReviewsResultModel(count: $count, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsResultModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ReviewsResultModelCopyWith<_ReviewsResultModel> get copyWith =>
      __$ReviewsResultModelCopyWithImpl<_ReviewsResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsResultModelToJson(this);
  }
}

abstract class _ReviewsResultModel implements ReviewsResultModel {
  const factory _ReviewsResultModel(
      {@required int count,
      @required List<ReviewsModel> data}) = _$_ReviewsResultModel;

  factory _ReviewsResultModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsResultModel.fromJson;

  @override
  int get count;
  @override
  List<ReviewsModel> get data;
  @override
  _$ReviewsResultModelCopyWith<_ReviewsResultModel> get copyWith;
}
