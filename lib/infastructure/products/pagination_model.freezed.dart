// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

class _$PaginationModelTearOff {
  const _$PaginationModelTearOff();

// ignore: unused_element
  _PaginationModel call(
      {@required
      @nullable
      @JsonKey(name: 'next')
          NextOrPreviousPage nextPage,
      @required
      @nullable
      @JsonKey(name: 'current')
          NextOrPreviousPage currentPage,
      @required
      @nullable
      @JsonKey(name: 'prev')
          NextOrPreviousPage previousPage}) {
    return _PaginationModel(
      nextPage: nextPage,
      currentPage: currentPage,
      previousPage: previousPage,
    );
  }
}

// ignore: unused_element
const $PaginationModel = _$PaginationModelTearOff();

mixin _$PaginationModel {
  @nullable
  @JsonKey(name: 'next')
  NextOrPreviousPage get nextPage;
  @nullable
  @JsonKey(name: 'current')
  NextOrPreviousPage get currentPage;
  @nullable
  @JsonKey(name: 'prev')
  NextOrPreviousPage get previousPage;

  Map<String, dynamic> toJson();
  $PaginationModelCopyWith<PaginationModel> get copyWith;
}

abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(name: 'next') NextOrPreviousPage nextPage,
      @nullable @JsonKey(name: 'current') NextOrPreviousPage currentPage,
      @nullable @JsonKey(name: 'prev') NextOrPreviousPage previousPage});

  $NextOrPreviousPageCopyWith<$Res> get nextPage;
  $NextOrPreviousPageCopyWith<$Res> get currentPage;
  $NextOrPreviousPageCopyWith<$Res> get previousPage;
}

class _$PaginationModelCopyWithImpl<$Res>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  final PaginationModel _value;
  // ignore: unused_field
  final $Res Function(PaginationModel) _then;

  @override
  $Res call({
    Object nextPage = freezed,
    Object currentPage = freezed,
    Object previousPage = freezed,
  }) {
    return _then(_value.copyWith(
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage as NextOrPreviousPage,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage as NextOrPreviousPage,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage as NextOrPreviousPage,
    ));
  }

  @override
  $NextOrPreviousPageCopyWith<$Res> get nextPage {
    if (_value.nextPage == null) {
      return null;
    }
    return $NextOrPreviousPageCopyWith<$Res>(_value.nextPage, (value) {
      return _then(_value.copyWith(nextPage: value));
    });
  }

  @override
  $NextOrPreviousPageCopyWith<$Res> get currentPage {
    if (_value.currentPage == null) {
      return null;
    }
    return $NextOrPreviousPageCopyWith<$Res>(_value.currentPage, (value) {
      return _then(_value.copyWith(currentPage: value));
    });
  }

  @override
  $NextOrPreviousPageCopyWith<$Res> get previousPage {
    if (_value.previousPage == null) {
      return null;
    }
    return $NextOrPreviousPageCopyWith<$Res>(_value.previousPage, (value) {
      return _then(_value.copyWith(previousPage: value));
    });
  }
}

abstract class _$PaginationModelCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$PaginationModelCopyWith(
          _PaginationModel value, $Res Function(_PaginationModel) then) =
      __$PaginationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(name: 'next') NextOrPreviousPage nextPage,
      @nullable @JsonKey(name: 'current') NextOrPreviousPage currentPage,
      @nullable @JsonKey(name: 'prev') NextOrPreviousPage previousPage});

  @override
  $NextOrPreviousPageCopyWith<$Res> get nextPage;
  @override
  $NextOrPreviousPageCopyWith<$Res> get currentPage;
  @override
  $NextOrPreviousPageCopyWith<$Res> get previousPage;
}

class __$PaginationModelCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res>
    implements _$PaginationModelCopyWith<$Res> {
  __$PaginationModelCopyWithImpl(
      _PaginationModel _value, $Res Function(_PaginationModel) _then)
      : super(_value, (v) => _then(v as _PaginationModel));

  @override
  _PaginationModel get _value => super._value as _PaginationModel;

  @override
  $Res call({
    Object nextPage = freezed,
    Object currentPage = freezed,
    Object previousPage = freezed,
  }) {
    return _then(_PaginationModel(
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage as NextOrPreviousPage,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage as NextOrPreviousPage,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage as NextOrPreviousPage,
    ));
  }
}

@JsonSerializable()
class _$_PaginationModel implements _PaginationModel {
  const _$_PaginationModel(
      {@required @nullable @JsonKey(name: 'next') this.nextPage,
      @required @nullable @JsonKey(name: 'current') this.currentPage,
      @required @nullable @JsonKey(name: 'prev') this.previousPage});

  factory _$_PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationModelFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'next')
  final NextOrPreviousPage nextPage;
  @override
  @nullable
  @JsonKey(name: 'current')
  final NextOrPreviousPage currentPage;
  @override
  @nullable
  @JsonKey(name: 'prev')
  final NextOrPreviousPage previousPage;

  @override
  String toString() {
    return 'PaginationModel(nextPage: $nextPage, currentPage: $currentPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationModel &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.previousPage, previousPage) ||
                const DeepCollectionEquality()
                    .equals(other.previousPage, previousPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(previousPage);

  @override
  _$PaginationModelCopyWith<_PaginationModel> get copyWith =>
      __$PaginationModelCopyWithImpl<_PaginationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationModelToJson(this);
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel(
      {@required
      @nullable
      @JsonKey(name: 'next')
          NextOrPreviousPage nextPage,
      @required
      @nullable
      @JsonKey(name: 'current')
          NextOrPreviousPage currentPage,
      @required
      @nullable
      @JsonKey(name: 'prev')
          NextOrPreviousPage previousPage}) = _$_PaginationModel;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationModel.fromJson;

  @override
  @nullable
  @JsonKey(name: 'next')
  NextOrPreviousPage get nextPage;
  @override
  @nullable
  @JsonKey(name: 'current')
  NextOrPreviousPage get currentPage;
  @override
  @nullable
  @JsonKey(name: 'prev')
  NextOrPreviousPage get previousPage;
  @override
  _$PaginationModelCopyWith<_PaginationModel> get copyWith;
}
