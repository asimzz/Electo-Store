// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductSearchEventTearOff {
  const _$ProductSearchEventTearOff();

// ignore: unused_element
  _SearchProductsWithName searchProductsWithName(String productQuery) {
    return _SearchProductsWithName(
      productQuery,
    );
  }

// ignore: unused_element
  _SearchProductsWithNameAndPageNumber searchProductsWithNameAndPageNumber(
      String productQuery, String pageNumber) {
    return _SearchProductsWithNameAndPageNumber(
      productQuery,
      pageNumber,
    );
  }
}

// ignore: unused_element
const $ProductSearchEvent = _$ProductSearchEventTearOff();

mixin _$ProductSearchEvent {
  String get productQuery;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchProductsWithName(String productQuery),
    @required
        Result searchProductsWithNameAndPageNumber(
            String productQuery, String pageNumber),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchProductsWithName(String productQuery),
    Result searchProductsWithNameAndPageNumber(
        String productQuery, String pageNumber),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchProductsWithName(_SearchProductsWithName value),
    @required
        Result searchProductsWithNameAndPageNumber(
            _SearchProductsWithNameAndPageNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchProductsWithName(_SearchProductsWithName value),
    Result searchProductsWithNameAndPageNumber(
        _SearchProductsWithNameAndPageNumber value),
    @required Result orElse(),
  });

  $ProductSearchEventCopyWith<ProductSearchEvent> get copyWith;
}

abstract class $ProductSearchEventCopyWith<$Res> {
  factory $ProductSearchEventCopyWith(
          ProductSearchEvent value, $Res Function(ProductSearchEvent) then) =
      _$ProductSearchEventCopyWithImpl<$Res>;
  $Res call({String productQuery});
}

class _$ProductSearchEventCopyWithImpl<$Res>
    implements $ProductSearchEventCopyWith<$Res> {
  _$ProductSearchEventCopyWithImpl(this._value, this._then);

  final ProductSearchEvent _value;
  // ignore: unused_field
  final $Res Function(ProductSearchEvent) _then;

  @override
  $Res call({
    Object productQuery = freezed,
  }) {
    return _then(_value.copyWith(
      productQuery: productQuery == freezed
          ? _value.productQuery
          : productQuery as String,
    ));
  }
}

abstract class _$SearchProductsWithNameCopyWith<$Res>
    implements $ProductSearchEventCopyWith<$Res> {
  factory _$SearchProductsWithNameCopyWith(_SearchProductsWithName value,
          $Res Function(_SearchProductsWithName) then) =
      __$SearchProductsWithNameCopyWithImpl<$Res>;
  @override
  $Res call({String productQuery});
}

class __$SearchProductsWithNameCopyWithImpl<$Res>
    extends _$ProductSearchEventCopyWithImpl<$Res>
    implements _$SearchProductsWithNameCopyWith<$Res> {
  __$SearchProductsWithNameCopyWithImpl(_SearchProductsWithName _value,
      $Res Function(_SearchProductsWithName) _then)
      : super(_value, (v) => _then(v as _SearchProductsWithName));

  @override
  _SearchProductsWithName get _value => super._value as _SearchProductsWithName;

  @override
  $Res call({
    Object productQuery = freezed,
  }) {
    return _then(_SearchProductsWithName(
      productQuery == freezed ? _value.productQuery : productQuery as String,
    ));
  }
}

class _$_SearchProductsWithName implements _SearchProductsWithName {
  const _$_SearchProductsWithName(this.productQuery)
      : assert(productQuery != null);

  @override
  final String productQuery;

  @override
  String toString() {
    return 'ProductSearchEvent.searchProductsWithName(productQuery: $productQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchProductsWithName &&
            (identical(other.productQuery, productQuery) ||
                const DeepCollectionEquality()
                    .equals(other.productQuery, productQuery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productQuery);

  @override
  _$SearchProductsWithNameCopyWith<_SearchProductsWithName> get copyWith =>
      __$SearchProductsWithNameCopyWithImpl<_SearchProductsWithName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchProductsWithName(String productQuery),
    @required
        Result searchProductsWithNameAndPageNumber(
            String productQuery, String pageNumber),
  }) {
    assert(searchProductsWithName != null);
    assert(searchProductsWithNameAndPageNumber != null);
    return searchProductsWithName(productQuery);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchProductsWithName(String productQuery),
    Result searchProductsWithNameAndPageNumber(
        String productQuery, String pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchProductsWithName != null) {
      return searchProductsWithName(productQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchProductsWithName(_SearchProductsWithName value),
    @required
        Result searchProductsWithNameAndPageNumber(
            _SearchProductsWithNameAndPageNumber value),
  }) {
    assert(searchProductsWithName != null);
    assert(searchProductsWithNameAndPageNumber != null);
    return searchProductsWithName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchProductsWithName(_SearchProductsWithName value),
    Result searchProductsWithNameAndPageNumber(
        _SearchProductsWithNameAndPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchProductsWithName != null) {
      return searchProductsWithName(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsWithName implements ProductSearchEvent {
  const factory _SearchProductsWithName(String productQuery) =
      _$_SearchProductsWithName;

  @override
  String get productQuery;
  @override
  _$SearchProductsWithNameCopyWith<_SearchProductsWithName> get copyWith;
}

abstract class _$SearchProductsWithNameAndPageNumberCopyWith<$Res>
    implements $ProductSearchEventCopyWith<$Res> {
  factory _$SearchProductsWithNameAndPageNumberCopyWith(
          _SearchProductsWithNameAndPageNumber value,
          $Res Function(_SearchProductsWithNameAndPageNumber) then) =
      __$SearchProductsWithNameAndPageNumberCopyWithImpl<$Res>;
  @override
  $Res call({String productQuery, String pageNumber});
}

class __$SearchProductsWithNameAndPageNumberCopyWithImpl<$Res>
    extends _$ProductSearchEventCopyWithImpl<$Res>
    implements _$SearchProductsWithNameAndPageNumberCopyWith<$Res> {
  __$SearchProductsWithNameAndPageNumberCopyWithImpl(
      _SearchProductsWithNameAndPageNumber _value,
      $Res Function(_SearchProductsWithNameAndPageNumber) _then)
      : super(_value, (v) => _then(v as _SearchProductsWithNameAndPageNumber));

  @override
  _SearchProductsWithNameAndPageNumber get _value =>
      super._value as _SearchProductsWithNameAndPageNumber;

  @override
  $Res call({
    Object productQuery = freezed,
    Object pageNumber = freezed,
  }) {
    return _then(_SearchProductsWithNameAndPageNumber(
      productQuery == freezed ? _value.productQuery : productQuery as String,
      pageNumber == freezed ? _value.pageNumber : pageNumber as String,
    ));
  }
}

class _$_SearchProductsWithNameAndPageNumber
    implements _SearchProductsWithNameAndPageNumber {
  const _$_SearchProductsWithNameAndPageNumber(
      this.productQuery, this.pageNumber)
      : assert(productQuery != null),
        assert(pageNumber != null);

  @override
  final String productQuery;
  @override
  final String pageNumber;

  @override
  String toString() {
    return 'ProductSearchEvent.searchProductsWithNameAndPageNumber(productQuery: $productQuery, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchProductsWithNameAndPageNumber &&
            (identical(other.productQuery, productQuery) ||
                const DeepCollectionEquality()
                    .equals(other.productQuery, productQuery)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productQuery) ^
      const DeepCollectionEquality().hash(pageNumber);

  @override
  _$SearchProductsWithNameAndPageNumberCopyWith<
          _SearchProductsWithNameAndPageNumber>
      get copyWith => __$SearchProductsWithNameAndPageNumberCopyWithImpl<
          _SearchProductsWithNameAndPageNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchProductsWithName(String productQuery),
    @required
        Result searchProductsWithNameAndPageNumber(
            String productQuery, String pageNumber),
  }) {
    assert(searchProductsWithName != null);
    assert(searchProductsWithNameAndPageNumber != null);
    return searchProductsWithNameAndPageNumber(productQuery, pageNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchProductsWithName(String productQuery),
    Result searchProductsWithNameAndPageNumber(
        String productQuery, String pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchProductsWithNameAndPageNumber != null) {
      return searchProductsWithNameAndPageNumber(productQuery, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchProductsWithName(_SearchProductsWithName value),
    @required
        Result searchProductsWithNameAndPageNumber(
            _SearchProductsWithNameAndPageNumber value),
  }) {
    assert(searchProductsWithName != null);
    assert(searchProductsWithNameAndPageNumber != null);
    return searchProductsWithNameAndPageNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchProductsWithName(_SearchProductsWithName value),
    Result searchProductsWithNameAndPageNumber(
        _SearchProductsWithNameAndPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchProductsWithNameAndPageNumber != null) {
      return searchProductsWithNameAndPageNumber(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsWithNameAndPageNumber
    implements ProductSearchEvent {
  const factory _SearchProductsWithNameAndPageNumber(
          String productQuery, String pageNumber) =
      _$_SearchProductsWithNameAndPageNumber;

  @override
  String get productQuery;
  String get pageNumber;
  @override
  _$SearchProductsWithNameAndPageNumberCopyWith<
      _SearchProductsWithNameAndPageNumber> get copyWith;
}

class _$ProductSearchStateTearOff {
  const _$ProductSearchStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

// ignore: unused_element
  _SearchSuccess searchSuccess(ProductsResultModel productsResultModel) {
    return _SearchSuccess(
      productsResultModel,
    );
  }

// ignore: unused_element
  _SearchFailure searchFailure(ProductFailure productFailure) {
    return _SearchFailure(
      productFailure,
    );
  }
}

// ignore: unused_element
const $ProductSearchState = _$ProductSearchStateTearOff();

mixin _$ProductSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(ProductsResultModel productsResultModel),
    @required Result searchFailure(ProductFailure productFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(ProductsResultModel productsResultModel),
    Result searchFailure(ProductFailure productFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  });
}

abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res>;
}

class _$ProductSearchStateCopyWithImpl<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  final ProductSearchState _value;
  // ignore: unused_field
  final $Res Function(ProductSearchState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(ProductsResultModel productsResultModel),
    @required Result searchFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(ProductsResultModel productsResultModel),
    Result searchFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductSearchState {
  const factory _Initial() = _$_Initial;
}

abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(
          _SearchInProgress value, $Res Function(_SearchInProgress) then) =
      __$SearchInProgressCopyWithImpl<$Res>;
}

class __$SearchInProgressCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res>
    implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(
      _SearchInProgress _value, $Res Function(_SearchInProgress) _then)
      : super(_value, (v) => _then(v as _SearchInProgress));

  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

class _$_SearchInProgress implements _SearchInProgress {
  const _$_SearchInProgress();

  @override
  String toString() {
    return 'ProductSearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(ProductsResultModel productsResultModel),
    @required Result searchFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(ProductsResultModel productsResultModel),
    Result searchFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements ProductSearchState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(
          _SearchSuccess value, $Res Function(_SearchSuccess) then) =
      __$SearchSuccessCopyWithImpl<$Res>;
  $Res call({ProductsResultModel productsResultModel});

  $ProductsResultModelCopyWith<$Res> get productsResultModel;
}

class __$SearchSuccessCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res>
    implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(
      _SearchSuccess _value, $Res Function(_SearchSuccess) _then)
      : super(_value, (v) => _then(v as _SearchSuccess));

  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;

  @override
  $Res call({
    Object productsResultModel = freezed,
  }) {
    return _then(_SearchSuccess(
      productsResultModel == freezed
          ? _value.productsResultModel
          : productsResultModel as ProductsResultModel,
    ));
  }

  @override
  $ProductsResultModelCopyWith<$Res> get productsResultModel {
    if (_value.productsResultModel == null) {
      return null;
    }
    return $ProductsResultModelCopyWith<$Res>(_value.productsResultModel,
        (value) {
      return _then(_value.copyWith(productsResultModel: value));
    });
  }
}

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.productsResultModel)
      : assert(productsResultModel != null);

  @override
  final ProductsResultModel productsResultModel;

  @override
  String toString() {
    return 'ProductSearchState.searchSuccess(productsResultModel: $productsResultModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchSuccess &&
            (identical(other.productsResultModel, productsResultModel) ||
                const DeepCollectionEquality()
                    .equals(other.productsResultModel, productsResultModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productsResultModel);

  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(ProductsResultModel productsResultModel),
    @required Result searchFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(productsResultModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(ProductsResultModel productsResultModel),
    Result searchFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(productsResultModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements ProductSearchState {
  const factory _SearchSuccess(ProductsResultModel productsResultModel) =
      _$_SearchSuccess;

  ProductsResultModel get productsResultModel;
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(
          _SearchFailure value, $Res Function(_SearchFailure) then) =
      __$SearchFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure productFailure});

  $ProductFailureCopyWith<$Res> get productFailure;
}

class __$SearchFailureCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res>
    implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(
      _SearchFailure _value, $Res Function(_SearchFailure) _then)
      : super(_value, (v) => _then(v as _SearchFailure));

  @override
  _SearchFailure get _value => super._value as _SearchFailure;

  @override
  $Res call({
    Object productFailure = freezed,
  }) {
    return _then(_SearchFailure(
      productFailure == freezed
          ? _value.productFailure
          : productFailure as ProductFailure,
    ));
  }

  @override
  $ProductFailureCopyWith<$Res> get productFailure {
    if (_value.productFailure == null) {
      return null;
    }
    return $ProductFailureCopyWith<$Res>(_value.productFailure, (value) {
      return _then(_value.copyWith(productFailure: value));
    });
  }
}

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.productFailure) : assert(productFailure != null);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductSearchState.searchFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFailure &&
            (identical(other.productFailure, productFailure) ||
                const DeepCollectionEquality()
                    .equals(other.productFailure, productFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productFailure);

  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith =>
      __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(ProductsResultModel productsResultModel),
    @required Result searchFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(ProductsResultModel productsResultModel),
    Result searchFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements ProductSearchState {
  const factory _SearchFailure(ProductFailure productFailure) =
      _$_SearchFailure;

  ProductFailure get productFailure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}
