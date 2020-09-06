// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewsActionEventTearOff {
  const _$ReviewsActionEventTearOff();

// ignore: unused_element
  _ReviewTextChanged reviewTextChanged(String reviewTextStr) {
    return _ReviewTextChanged(
      reviewTextStr,
    );
  }

// ignore: unused_element
  _RatingChanged ratingChanged(int ratingStr) {
    return _RatingChanged(
      ratingStr,
    );
  }

// ignore: unused_element
  _AddNewReviewPressed addNewReviewPressed(String productId) {
    return _AddNewReviewPressed(
      productId,
    );
  }
}

// ignore: unused_element
const $ReviewsActionEvent = _$ReviewsActionEventTearOff();

mixin _$ReviewsActionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result reviewTextChanged(String reviewTextStr),
    @required Result ratingChanged(int ratingStr),
    @required Result addNewReviewPressed(String productId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result reviewTextChanged(String reviewTextStr),
    Result ratingChanged(int ratingStr),
    Result addNewReviewPressed(String productId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result reviewTextChanged(_ReviewTextChanged value),
    @required Result ratingChanged(_RatingChanged value),
    @required Result addNewReviewPressed(_AddNewReviewPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result reviewTextChanged(_ReviewTextChanged value),
    Result ratingChanged(_RatingChanged value),
    Result addNewReviewPressed(_AddNewReviewPressed value),
    @required Result orElse(),
  });
}

abstract class $ReviewsActionEventCopyWith<$Res> {
  factory $ReviewsActionEventCopyWith(
          ReviewsActionEvent value, $Res Function(ReviewsActionEvent) then) =
      _$ReviewsActionEventCopyWithImpl<$Res>;
}

class _$ReviewsActionEventCopyWithImpl<$Res>
    implements $ReviewsActionEventCopyWith<$Res> {
  _$ReviewsActionEventCopyWithImpl(this._value, this._then);

  final ReviewsActionEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewsActionEvent) _then;
}

abstract class _$ReviewTextChangedCopyWith<$Res> {
  factory _$ReviewTextChangedCopyWith(
          _ReviewTextChanged value, $Res Function(_ReviewTextChanged) then) =
      __$ReviewTextChangedCopyWithImpl<$Res>;
  $Res call({String reviewTextStr});
}

class __$ReviewTextChangedCopyWithImpl<$Res>
    extends _$ReviewsActionEventCopyWithImpl<$Res>
    implements _$ReviewTextChangedCopyWith<$Res> {
  __$ReviewTextChangedCopyWithImpl(
      _ReviewTextChanged _value, $Res Function(_ReviewTextChanged) _then)
      : super(_value, (v) => _then(v as _ReviewTextChanged));

  @override
  _ReviewTextChanged get _value => super._value as _ReviewTextChanged;

  @override
  $Res call({
    Object reviewTextStr = freezed,
  }) {
    return _then(_ReviewTextChanged(
      reviewTextStr == freezed ? _value.reviewTextStr : reviewTextStr as String,
    ));
  }
}

class _$_ReviewTextChanged implements _ReviewTextChanged {
  const _$_ReviewTextChanged(this.reviewTextStr)
      : assert(reviewTextStr != null);

  @override
  final String reviewTextStr;

  @override
  String toString() {
    return 'ReviewsActionEvent.reviewTextChanged(reviewTextStr: $reviewTextStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewTextChanged &&
            (identical(other.reviewTextStr, reviewTextStr) ||
                const DeepCollectionEquality()
                    .equals(other.reviewTextStr, reviewTextStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewTextStr);

  @override
  _$ReviewTextChangedCopyWith<_ReviewTextChanged> get copyWith =>
      __$ReviewTextChangedCopyWithImpl<_ReviewTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result reviewTextChanged(String reviewTextStr),
    @required Result ratingChanged(int ratingStr),
    @required Result addNewReviewPressed(String productId),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return reviewTextChanged(reviewTextStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result reviewTextChanged(String reviewTextStr),
    Result ratingChanged(int ratingStr),
    Result addNewReviewPressed(String productId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewTextChanged != null) {
      return reviewTextChanged(reviewTextStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result reviewTextChanged(_ReviewTextChanged value),
    @required Result ratingChanged(_RatingChanged value),
    @required Result addNewReviewPressed(_AddNewReviewPressed value),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return reviewTextChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result reviewTextChanged(_ReviewTextChanged value),
    Result ratingChanged(_RatingChanged value),
    Result addNewReviewPressed(_AddNewReviewPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewTextChanged != null) {
      return reviewTextChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewTextChanged implements ReviewsActionEvent {
  const factory _ReviewTextChanged(String reviewTextStr) = _$_ReviewTextChanged;

  String get reviewTextStr;
  _$ReviewTextChangedCopyWith<_ReviewTextChanged> get copyWith;
}

abstract class _$RatingChangedCopyWith<$Res> {
  factory _$RatingChangedCopyWith(
          _RatingChanged value, $Res Function(_RatingChanged) then) =
      __$RatingChangedCopyWithImpl<$Res>;
  $Res call({int ratingStr});
}

class __$RatingChangedCopyWithImpl<$Res>
    extends _$ReviewsActionEventCopyWithImpl<$Res>
    implements _$RatingChangedCopyWith<$Res> {
  __$RatingChangedCopyWithImpl(
      _RatingChanged _value, $Res Function(_RatingChanged) _then)
      : super(_value, (v) => _then(v as _RatingChanged));

  @override
  _RatingChanged get _value => super._value as _RatingChanged;

  @override
  $Res call({
    Object ratingStr = freezed,
  }) {
    return _then(_RatingChanged(
      ratingStr == freezed ? _value.ratingStr : ratingStr as int,
    ));
  }
}

class _$_RatingChanged implements _RatingChanged {
  const _$_RatingChanged(this.ratingStr) : assert(ratingStr != null);

  @override
  final int ratingStr;

  @override
  String toString() {
    return 'ReviewsActionEvent.ratingChanged(ratingStr: $ratingStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RatingChanged &&
            (identical(other.ratingStr, ratingStr) ||
                const DeepCollectionEquality()
                    .equals(other.ratingStr, ratingStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ratingStr);

  @override
  _$RatingChangedCopyWith<_RatingChanged> get copyWith =>
      __$RatingChangedCopyWithImpl<_RatingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result reviewTextChanged(String reviewTextStr),
    @required Result ratingChanged(int ratingStr),
    @required Result addNewReviewPressed(String productId),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return ratingChanged(ratingStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result reviewTextChanged(String reviewTextStr),
    Result ratingChanged(int ratingStr),
    Result addNewReviewPressed(String productId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingChanged != null) {
      return ratingChanged(ratingStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result reviewTextChanged(_ReviewTextChanged value),
    @required Result ratingChanged(_RatingChanged value),
    @required Result addNewReviewPressed(_AddNewReviewPressed value),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return ratingChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result reviewTextChanged(_ReviewTextChanged value),
    Result ratingChanged(_RatingChanged value),
    Result addNewReviewPressed(_AddNewReviewPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingChanged != null) {
      return ratingChanged(this);
    }
    return orElse();
  }
}

abstract class _RatingChanged implements ReviewsActionEvent {
  const factory _RatingChanged(int ratingStr) = _$_RatingChanged;

  int get ratingStr;
  _$RatingChangedCopyWith<_RatingChanged> get copyWith;
}

abstract class _$AddNewReviewPressedCopyWith<$Res> {
  factory _$AddNewReviewPressedCopyWith(_AddNewReviewPressed value,
          $Res Function(_AddNewReviewPressed) then) =
      __$AddNewReviewPressedCopyWithImpl<$Res>;
  $Res call({String productId});
}

class __$AddNewReviewPressedCopyWithImpl<$Res>
    extends _$ReviewsActionEventCopyWithImpl<$Res>
    implements _$AddNewReviewPressedCopyWith<$Res> {
  __$AddNewReviewPressedCopyWithImpl(
      _AddNewReviewPressed _value, $Res Function(_AddNewReviewPressed) _then)
      : super(_value, (v) => _then(v as _AddNewReviewPressed));

  @override
  _AddNewReviewPressed get _value => super._value as _AddNewReviewPressed;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_AddNewReviewPressed(
      productId == freezed ? _value.productId : productId as String,
    ));
  }
}

class _$_AddNewReviewPressed implements _AddNewReviewPressed {
  const _$_AddNewReviewPressed(this.productId) : assert(productId != null);

  @override
  final String productId;

  @override
  String toString() {
    return 'ReviewsActionEvent.addNewReviewPressed(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewReviewPressed &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @override
  _$AddNewReviewPressedCopyWith<_AddNewReviewPressed> get copyWith =>
      __$AddNewReviewPressedCopyWithImpl<_AddNewReviewPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result reviewTextChanged(String reviewTextStr),
    @required Result ratingChanged(int ratingStr),
    @required Result addNewReviewPressed(String productId),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return addNewReviewPressed(productId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result reviewTextChanged(String reviewTextStr),
    Result ratingChanged(int ratingStr),
    Result addNewReviewPressed(String productId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewReviewPressed != null) {
      return addNewReviewPressed(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result reviewTextChanged(_ReviewTextChanged value),
    @required Result ratingChanged(_RatingChanged value),
    @required Result addNewReviewPressed(_AddNewReviewPressed value),
  }) {
    assert(reviewTextChanged != null);
    assert(ratingChanged != null);
    assert(addNewReviewPressed != null);
    return addNewReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result reviewTextChanged(_ReviewTextChanged value),
    Result ratingChanged(_RatingChanged value),
    Result addNewReviewPressed(_AddNewReviewPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewReviewPressed != null) {
      return addNewReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _AddNewReviewPressed implements ReviewsActionEvent {
  const factory _AddNewReviewPressed(String productId) = _$_AddNewReviewPressed;

  String get productId;
  _$AddNewReviewPressedCopyWith<_AddNewReviewPressed> get copyWith;
}

class _$ReviewsActionStateTearOff {
  const _$ReviewsActionStateTearOff();

// ignore: unused_element
  _ReviewsActionState call(
      {@required
          ReviewText reviewText,
      @required
          int rating,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption}) {
    return _ReviewsActionState(
      reviewText: reviewText,
      rating: rating,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ReviewsActionState = _$ReviewsActionStateTearOff();

mixin _$ReviewsActionState {
  ReviewText get reviewText;
  int get rating;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption;

  $ReviewsActionStateCopyWith<ReviewsActionState> get copyWith;
}

abstract class $ReviewsActionStateCopyWith<$Res> {
  factory $ReviewsActionStateCopyWith(
          ReviewsActionState value, $Res Function(ReviewsActionState) then) =
      _$ReviewsActionStateCopyWithImpl<$Res>;
  $Res call(
      {ReviewText reviewText,
      int rating,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

class _$ReviewsActionStateCopyWithImpl<$Res>
    implements $ReviewsActionStateCopyWith<$Res> {
  _$ReviewsActionStateCopyWithImpl(this._value, this._then);

  final ReviewsActionState _value;
  // ignore: unused_field
  final $Res Function(ReviewsActionState) _then;

  @override
  $Res call({
    Object reviewText = freezed,
    Object rating = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      reviewText:
          reviewText == freezed ? _value.reviewText : reviewText as ReviewText,
      rating: rating == freezed ? _value.rating : rating as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption == freezed
          ? _value.reviewFailureOrSuccessOption
          : reviewFailureOrSuccessOption as Option<Either<ReviewFailure, Unit>>,
    ));
  }
}

abstract class _$ReviewsActionStateCopyWith<$Res>
    implements $ReviewsActionStateCopyWith<$Res> {
  factory _$ReviewsActionStateCopyWith(
          _ReviewsActionState value, $Res Function(_ReviewsActionState) then) =
      __$ReviewsActionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ReviewText reviewText,
      int rating,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

class __$ReviewsActionStateCopyWithImpl<$Res>
    extends _$ReviewsActionStateCopyWithImpl<$Res>
    implements _$ReviewsActionStateCopyWith<$Res> {
  __$ReviewsActionStateCopyWithImpl(
      _ReviewsActionState _value, $Res Function(_ReviewsActionState) _then)
      : super(_value, (v) => _then(v as _ReviewsActionState));

  @override
  _ReviewsActionState get _value => super._value as _ReviewsActionState;

  @override
  $Res call({
    Object reviewText = freezed,
    Object rating = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_ReviewsActionState(
      reviewText:
          reviewText == freezed ? _value.reviewText : reviewText as ReviewText,
      rating: rating == freezed ? _value.rating : rating as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption == freezed
          ? _value.reviewFailureOrSuccessOption
          : reviewFailureOrSuccessOption as Option<Either<ReviewFailure, Unit>>,
    ));
  }
}

class _$_ReviewsActionState implements _ReviewsActionState {
  const _$_ReviewsActionState(
      {@required this.reviewText,
      @required this.rating,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.reviewFailureOrSuccessOption})
      : assert(reviewText != null),
        assert(rating != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(reviewFailureOrSuccessOption != null);

  @override
  final ReviewText reviewText;
  @override
  final int rating;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewsActionState(reviewText: $reviewText, rating: $rating, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, reviewFailureOrSuccessOption: $reviewFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsActionState &&
            (identical(other.reviewText, reviewText) ||
                const DeepCollectionEquality()
                    .equals(other.reviewText, reviewText)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.reviewFailureOrSuccessOption,
                    reviewFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.reviewFailureOrSuccessOption,
                    reviewFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviewText) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccessOption);

  @override
  _$ReviewsActionStateCopyWith<_ReviewsActionState> get copyWith =>
      __$ReviewsActionStateCopyWithImpl<_ReviewsActionState>(this, _$identity);
}

abstract class _ReviewsActionState implements ReviewsActionState {
  const factory _ReviewsActionState(
      {@required
          ReviewText reviewText,
      @required
          int rating,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ReviewFailure, Unit>>
              reviewFailureOrSuccessOption}) = _$_ReviewsActionState;

  @override
  ReviewText get reviewText;
  @override
  int get rating;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption;
  @override
  _$ReviewsActionStateCopyWith<_ReviewsActionState> get copyWith;
}
