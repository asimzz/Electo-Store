// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_search_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductSearchFormEventTearOff {
  const _$ProductSearchFormEventTearOff();

// ignore: unused_element
  _KeywordChanged keywordChanged(String keywordStr) {
    return _KeywordChanged(
      keywordStr,
    );
  }

// ignore: unused_element
  _PriceRangeValuesChanged priceRangeValuesChanged(
      RangeValues priceRangeValues) {
    return _PriceRangeValuesChanged(
      priceRangeValues,
    );
  }

// ignore: unused_element
  _RatingRangeValuesChanged ratingRangeValuesChanged(
      RangeValues ratingRangeValues) {
    return _RatingRangeValuesChanged(
      ratingRangeValues,
    );
  }

// ignore: unused_element
  _ProductSearchButtonPressed productSearchButtonPressed() {
    return const _ProductSearchButtonPressed();
  }
}

// ignore: unused_element
const $ProductSearchFormEvent = _$ProductSearchFormEventTearOff();

mixin _$ProductSearchFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result priceRangeValuesChanged(RangeValues priceRangeValues),
    @required Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    @required Result productSearchButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result priceRangeValuesChanged(RangeValues priceRangeValues),
    Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    Result productSearchButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    @required Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    @required
        Result productSearchButtonPressed(_ProductSearchButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    Result productSearchButtonPressed(_ProductSearchButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $ProductSearchFormEventCopyWith<$Res> {
  factory $ProductSearchFormEventCopyWith(ProductSearchFormEvent value,
          $Res Function(ProductSearchFormEvent) then) =
      _$ProductSearchFormEventCopyWithImpl<$Res>;
}

class _$ProductSearchFormEventCopyWithImpl<$Res>
    implements $ProductSearchFormEventCopyWith<$Res> {
  _$ProductSearchFormEventCopyWithImpl(this._value, this._then);

  final ProductSearchFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProductSearchFormEvent) _then;
}

abstract class _$KeywordChangedCopyWith<$Res> {
  factory _$KeywordChangedCopyWith(
          _KeywordChanged value, $Res Function(_KeywordChanged) then) =
      __$KeywordChangedCopyWithImpl<$Res>;
  $Res call({String keywordStr});
}

class __$KeywordChangedCopyWithImpl<$Res>
    extends _$ProductSearchFormEventCopyWithImpl<$Res>
    implements _$KeywordChangedCopyWith<$Res> {
  __$KeywordChangedCopyWithImpl(
      _KeywordChanged _value, $Res Function(_KeywordChanged) _then)
      : super(_value, (v) => _then(v as _KeywordChanged));

  @override
  _KeywordChanged get _value => super._value as _KeywordChanged;

  @override
  $Res call({
    Object keywordStr = freezed,
  }) {
    return _then(_KeywordChanged(
      keywordStr == freezed ? _value.keywordStr : keywordStr as String,
    ));
  }
}

class _$_KeywordChanged implements _KeywordChanged {
  const _$_KeywordChanged(this.keywordStr) : assert(keywordStr != null);

  @override
  final String keywordStr;

  @override
  String toString() {
    return 'ProductSearchFormEvent.keywordChanged(keywordStr: $keywordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeywordChanged &&
            (identical(other.keywordStr, keywordStr) ||
                const DeepCollectionEquality()
                    .equals(other.keywordStr, keywordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keywordStr);

  @override
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith =>
      __$KeywordChangedCopyWithImpl<_KeywordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result priceRangeValuesChanged(RangeValues priceRangeValues),
    @required Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    @required Result productSearchButtonPressed(),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return keywordChanged(keywordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result priceRangeValuesChanged(RangeValues priceRangeValues),
    Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    Result productSearchButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordChanged != null) {
      return keywordChanged(keywordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    @required Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    @required
        Result productSearchButtonPressed(_ProductSearchButtonPressed value),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return keywordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    Result productSearchButtonPressed(_ProductSearchButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordChanged != null) {
      return keywordChanged(this);
    }
    return orElse();
  }
}

abstract class _KeywordChanged implements ProductSearchFormEvent {
  const factory _KeywordChanged(String keywordStr) = _$_KeywordChanged;

  String get keywordStr;
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith;
}

abstract class _$PriceRangeValuesChangedCopyWith<$Res> {
  factory _$PriceRangeValuesChangedCopyWith(_PriceRangeValuesChanged value,
          $Res Function(_PriceRangeValuesChanged) then) =
      __$PriceRangeValuesChangedCopyWithImpl<$Res>;
  $Res call({RangeValues priceRangeValues});
}

class __$PriceRangeValuesChangedCopyWithImpl<$Res>
    extends _$ProductSearchFormEventCopyWithImpl<$Res>
    implements _$PriceRangeValuesChangedCopyWith<$Res> {
  __$PriceRangeValuesChangedCopyWithImpl(_PriceRangeValuesChanged _value,
      $Res Function(_PriceRangeValuesChanged) _then)
      : super(_value, (v) => _then(v as _PriceRangeValuesChanged));

  @override
  _PriceRangeValuesChanged get _value =>
      super._value as _PriceRangeValuesChanged;

  @override
  $Res call({
    Object priceRangeValues = freezed,
  }) {
    return _then(_PriceRangeValuesChanged(
      priceRangeValues == freezed
          ? _value.priceRangeValues
          : priceRangeValues as RangeValues,
    ));
  }
}

class _$_PriceRangeValuesChanged implements _PriceRangeValuesChanged {
  const _$_PriceRangeValuesChanged(this.priceRangeValues)
      : assert(priceRangeValues != null);

  @override
  final RangeValues priceRangeValues;

  @override
  String toString() {
    return 'ProductSearchFormEvent.priceRangeValuesChanged(priceRangeValues: $priceRangeValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceRangeValuesChanged &&
            (identical(other.priceRangeValues, priceRangeValues) ||
                const DeepCollectionEquality()
                    .equals(other.priceRangeValues, priceRangeValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(priceRangeValues);

  @override
  _$PriceRangeValuesChangedCopyWith<_PriceRangeValuesChanged> get copyWith =>
      __$PriceRangeValuesChangedCopyWithImpl<_PriceRangeValuesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result priceRangeValuesChanged(RangeValues priceRangeValues),
    @required Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    @required Result productSearchButtonPressed(),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return priceRangeValuesChanged(priceRangeValues);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result priceRangeValuesChanged(RangeValues priceRangeValues),
    Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    Result productSearchButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceRangeValuesChanged != null) {
      return priceRangeValuesChanged(priceRangeValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    @required Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    @required
        Result productSearchButtonPressed(_ProductSearchButtonPressed value),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return priceRangeValuesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    Result productSearchButtonPressed(_ProductSearchButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceRangeValuesChanged != null) {
      return priceRangeValuesChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceRangeValuesChanged implements ProductSearchFormEvent {
  const factory _PriceRangeValuesChanged(RangeValues priceRangeValues) =
      _$_PriceRangeValuesChanged;

  RangeValues get priceRangeValues;
  _$PriceRangeValuesChangedCopyWith<_PriceRangeValuesChanged> get copyWith;
}

abstract class _$RatingRangeValuesChangedCopyWith<$Res> {
  factory _$RatingRangeValuesChangedCopyWith(_RatingRangeValuesChanged value,
          $Res Function(_RatingRangeValuesChanged) then) =
      __$RatingRangeValuesChangedCopyWithImpl<$Res>;
  $Res call({RangeValues ratingRangeValues});
}

class __$RatingRangeValuesChangedCopyWithImpl<$Res>
    extends _$ProductSearchFormEventCopyWithImpl<$Res>
    implements _$RatingRangeValuesChangedCopyWith<$Res> {
  __$RatingRangeValuesChangedCopyWithImpl(_RatingRangeValuesChanged _value,
      $Res Function(_RatingRangeValuesChanged) _then)
      : super(_value, (v) => _then(v as _RatingRangeValuesChanged));

  @override
  _RatingRangeValuesChanged get _value =>
      super._value as _RatingRangeValuesChanged;

  @override
  $Res call({
    Object ratingRangeValues = freezed,
  }) {
    return _then(_RatingRangeValuesChanged(
      ratingRangeValues == freezed
          ? _value.ratingRangeValues
          : ratingRangeValues as RangeValues,
    ));
  }
}

class _$_RatingRangeValuesChanged implements _RatingRangeValuesChanged {
  const _$_RatingRangeValuesChanged(this.ratingRangeValues)
      : assert(ratingRangeValues != null);

  @override
  final RangeValues ratingRangeValues;

  @override
  String toString() {
    return 'ProductSearchFormEvent.ratingRangeValuesChanged(ratingRangeValues: $ratingRangeValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RatingRangeValuesChanged &&
            (identical(other.ratingRangeValues, ratingRangeValues) ||
                const DeepCollectionEquality()
                    .equals(other.ratingRangeValues, ratingRangeValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ratingRangeValues);

  @override
  _$RatingRangeValuesChangedCopyWith<_RatingRangeValuesChanged> get copyWith =>
      __$RatingRangeValuesChangedCopyWithImpl<_RatingRangeValuesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result priceRangeValuesChanged(RangeValues priceRangeValues),
    @required Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    @required Result productSearchButtonPressed(),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return ratingRangeValuesChanged(ratingRangeValues);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result priceRangeValuesChanged(RangeValues priceRangeValues),
    Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    Result productSearchButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingRangeValuesChanged != null) {
      return ratingRangeValuesChanged(ratingRangeValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    @required Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    @required
        Result productSearchButtonPressed(_ProductSearchButtonPressed value),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return ratingRangeValuesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    Result productSearchButtonPressed(_ProductSearchButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingRangeValuesChanged != null) {
      return ratingRangeValuesChanged(this);
    }
    return orElse();
  }
}

abstract class _RatingRangeValuesChanged implements ProductSearchFormEvent {
  const factory _RatingRangeValuesChanged(RangeValues ratingRangeValues) =
      _$_RatingRangeValuesChanged;

  RangeValues get ratingRangeValues;
  _$RatingRangeValuesChangedCopyWith<_RatingRangeValuesChanged> get copyWith;
}

abstract class _$ProductSearchButtonPressedCopyWith<$Res> {
  factory _$ProductSearchButtonPressedCopyWith(
          _ProductSearchButtonPressed value,
          $Res Function(_ProductSearchButtonPressed) then) =
      __$ProductSearchButtonPressedCopyWithImpl<$Res>;
}

class __$ProductSearchButtonPressedCopyWithImpl<$Res>
    extends _$ProductSearchFormEventCopyWithImpl<$Res>
    implements _$ProductSearchButtonPressedCopyWith<$Res> {
  __$ProductSearchButtonPressedCopyWithImpl(_ProductSearchButtonPressed _value,
      $Res Function(_ProductSearchButtonPressed) _then)
      : super(_value, (v) => _then(v as _ProductSearchButtonPressed));

  @override
  _ProductSearchButtonPressed get _value =>
      super._value as _ProductSearchButtonPressed;
}

class _$_ProductSearchButtonPressed implements _ProductSearchButtonPressed {
  const _$_ProductSearchButtonPressed();

  @override
  String toString() {
    return 'ProductSearchFormEvent.productSearchButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProductSearchButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result priceRangeValuesChanged(RangeValues priceRangeValues),
    @required Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    @required Result productSearchButtonPressed(),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return productSearchButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result priceRangeValuesChanged(RangeValues priceRangeValues),
    Result ratingRangeValuesChanged(RangeValues ratingRangeValues),
    Result productSearchButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productSearchButtonPressed != null) {
      return productSearchButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    @required Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    @required
        Result productSearchButtonPressed(_ProductSearchButtonPressed value),
  }) {
    assert(keywordChanged != null);
    assert(priceRangeValuesChanged != null);
    assert(ratingRangeValuesChanged != null);
    assert(productSearchButtonPressed != null);
    return productSearchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result priceRangeValuesChanged(_PriceRangeValuesChanged value),
    Result ratingRangeValuesChanged(_RatingRangeValuesChanged value),
    Result productSearchButtonPressed(_ProductSearchButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productSearchButtonPressed != null) {
      return productSearchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ProductSearchButtonPressed implements ProductSearchFormEvent {
  const factory _ProductSearchButtonPressed() = _$_ProductSearchButtonPressed;
}

class _$ProductSearchFormStateTearOff {
  const _$ProductSearchFormStateTearOff();

// ignore: unused_element
  _ProductSearchFormState call(
      {@required
          ProductSearch productSearch,
      @required
          bool showErrorMessages,
      @required
          bool isSearching,
      @required
          Option<Either<ProductFailure, ProductSearchResult>>
              searchFailureOrSuccessOption}) {
    return _ProductSearchFormState(
      productSearch: productSearch,
      showErrorMessages: showErrorMessages,
      isSearching: isSearching,
      searchFailureOrSuccessOption: searchFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ProductSearchFormState = _$ProductSearchFormStateTearOff();

mixin _$ProductSearchFormState {
  ProductSearch get productSearch;
  bool get showErrorMessages;
  bool get isSearching;
  Option<Either<ProductFailure, ProductSearchResult>>
      get searchFailureOrSuccessOption;

  $ProductSearchFormStateCopyWith<ProductSearchFormState> get copyWith;
}

abstract class $ProductSearchFormStateCopyWith<$Res> {
  factory $ProductSearchFormStateCopyWith(ProductSearchFormState value,
          $Res Function(ProductSearchFormState) then) =
      _$ProductSearchFormStateCopyWithImpl<$Res>;
  $Res call(
      {ProductSearch productSearch,
      bool showErrorMessages,
      bool isSearching,
      Option<Either<ProductFailure, ProductSearchResult>>
          searchFailureOrSuccessOption});

  $ProductSearchCopyWith<$Res> get productSearch;
}

class _$ProductSearchFormStateCopyWithImpl<$Res>
    implements $ProductSearchFormStateCopyWith<$Res> {
  _$ProductSearchFormStateCopyWithImpl(this._value, this._then);

  final ProductSearchFormState _value;
  // ignore: unused_field
  final $Res Function(ProductSearchFormState) _then;

  @override
  $Res call({
    Object productSearch = freezed,
    Object showErrorMessages = freezed,
    Object isSearching = freezed,
    Object searchFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      productSearch: productSearch == freezed
          ? _value.productSearch
          : productSearch as ProductSearch,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      searchFailureOrSuccessOption: searchFailureOrSuccessOption == freezed
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption
              as Option<Either<ProductFailure, ProductSearchResult>>,
    ));
  }

  @override
  $ProductSearchCopyWith<$Res> get productSearch {
    if (_value.productSearch == null) {
      return null;
    }
    return $ProductSearchCopyWith<$Res>(_value.productSearch, (value) {
      return _then(_value.copyWith(productSearch: value));
    });
  }
}

abstract class _$ProductSearchFormStateCopyWith<$Res>
    implements $ProductSearchFormStateCopyWith<$Res> {
  factory _$ProductSearchFormStateCopyWith(_ProductSearchFormState value,
          $Res Function(_ProductSearchFormState) then) =
      __$ProductSearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProductSearch productSearch,
      bool showErrorMessages,
      bool isSearching,
      Option<Either<ProductFailure, ProductSearchResult>>
          searchFailureOrSuccessOption});

  @override
  $ProductSearchCopyWith<$Res> get productSearch;
}

class __$ProductSearchFormStateCopyWithImpl<$Res>
    extends _$ProductSearchFormStateCopyWithImpl<$Res>
    implements _$ProductSearchFormStateCopyWith<$Res> {
  __$ProductSearchFormStateCopyWithImpl(_ProductSearchFormState _value,
      $Res Function(_ProductSearchFormState) _then)
      : super(_value, (v) => _then(v as _ProductSearchFormState));

  @override
  _ProductSearchFormState get _value => super._value as _ProductSearchFormState;

  @override
  $Res call({
    Object productSearch = freezed,
    Object showErrorMessages = freezed,
    Object isSearching = freezed,
    Object searchFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProductSearchFormState(
      productSearch: productSearch == freezed
          ? _value.productSearch
          : productSearch as ProductSearch,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      searchFailureOrSuccessOption: searchFailureOrSuccessOption == freezed
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption
              as Option<Either<ProductFailure, ProductSearchResult>>,
    ));
  }
}

class _$_ProductSearchFormState implements _ProductSearchFormState {
  const _$_ProductSearchFormState(
      {@required this.productSearch,
      @required this.showErrorMessages,
      @required this.isSearching,
      @required this.searchFailureOrSuccessOption})
      : assert(productSearch != null),
        assert(showErrorMessages != null),
        assert(isSearching != null),
        assert(searchFailureOrSuccessOption != null);

  @override
  final ProductSearch productSearch;
  @override
  final bool showErrorMessages;
  @override
  final bool isSearching;
  @override
  final Option<Either<ProductFailure, ProductSearchResult>>
      searchFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductSearchFormState(productSearch: $productSearch, showErrorMessages: $showErrorMessages, isSearching: $isSearching, searchFailureOrSuccessOption: $searchFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSearchFormState &&
            (identical(other.productSearch, productSearch) ||
                const DeepCollectionEquality()
                    .equals(other.productSearch, productSearch)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.searchFailureOrSuccessOption,
                    searchFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.searchFailureOrSuccessOption,
                    searchFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productSearch) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(searchFailureOrSuccessOption);

  @override
  _$ProductSearchFormStateCopyWith<_ProductSearchFormState> get copyWith =>
      __$ProductSearchFormStateCopyWithImpl<_ProductSearchFormState>(
          this, _$identity);
}

abstract class _ProductSearchFormState implements ProductSearchFormState {
  const factory _ProductSearchFormState(
      {@required
          ProductSearch productSearch,
      @required
          bool showErrorMessages,
      @required
          bool isSearching,
      @required
          Option<Either<ProductFailure, ProductSearchResult>>
              searchFailureOrSuccessOption}) = _$_ProductSearchFormState;

  @override
  ProductSearch get productSearch;
  @override
  bool get showErrorMessages;
  @override
  bool get isSearching;
  @override
  Option<Either<ProductFailure, ProductSearchResult>>
      get searchFailureOrSuccessOption;
  @override
  _$ProductSearchFormStateCopyWith<_ProductSearchFormState> get copyWith;
}
