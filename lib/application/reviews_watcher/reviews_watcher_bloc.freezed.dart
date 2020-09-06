// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewsWatcherEventTearOff {
  const _$ReviewsWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(String productId) {
    return _WatchAllStarted(
      productId,
    );
  }

// ignore: unused_element
  _ReviewsReceived reviewsReceived(
      Either<ReviewFailure, ReviewsResultModel> failureOrReviews) {
    return _ReviewsReceived(
      failureOrReviews,
    );
  }
}

// ignore: unused_element
const $ReviewsWatcherEvent = _$ReviewsWatcherEventTearOff();

mixin _$ReviewsWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(String productId),
    @required
        Result reviewsReceived(
            Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(String productId),
    Result reviewsReceived(
        Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result reviewsReceived(_ReviewsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result reviewsReceived(_ReviewsReceived value),
    @required Result orElse(),
  });
}

abstract class $ReviewsWatcherEventCopyWith<$Res> {
  factory $ReviewsWatcherEventCopyWith(
          ReviewsWatcherEvent value, $Res Function(ReviewsWatcherEvent) then) =
      _$ReviewsWatcherEventCopyWithImpl<$Res>;
}

class _$ReviewsWatcherEventCopyWithImpl<$Res>
    implements $ReviewsWatcherEventCopyWith<$Res> {
  _$ReviewsWatcherEventCopyWithImpl(this._value, this._then);

  final ReviewsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewsWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String productId});
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ReviewsWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_WatchAllStarted(
      productId == freezed ? _value.productId : productId as String,
    ));
  }
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.productId) : assert(productId != null);

  @override
  final String productId;

  @override
  String toString() {
    return 'ReviewsWatcherEvent.watchAllStarted(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(String productId),
    @required
        Result reviewsReceived(
            Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
  }) {
    assert(watchAllStarted != null);
    assert(reviewsReceived != null);
    return watchAllStarted(productId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(String productId),
    Result reviewsReceived(
        Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result reviewsReceived(_ReviewsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(reviewsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result reviewsReceived(_ReviewsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ReviewsWatcherEvent {
  const factory _WatchAllStarted(String productId) = _$_WatchAllStarted;

  String get productId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

abstract class _$ReviewsReceivedCopyWith<$Res> {
  factory _$ReviewsReceivedCopyWith(
          _ReviewsReceived value, $Res Function(_ReviewsReceived) then) =
      __$ReviewsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ReviewFailure, ReviewsResultModel> failureOrReviews});
}

class __$ReviewsReceivedCopyWithImpl<$Res>
    extends _$ReviewsWatcherEventCopyWithImpl<$Res>
    implements _$ReviewsReceivedCopyWith<$Res> {
  __$ReviewsReceivedCopyWithImpl(
      _ReviewsReceived _value, $Res Function(_ReviewsReceived) _then)
      : super(_value, (v) => _then(v as _ReviewsReceived));

  @override
  _ReviewsReceived get _value => super._value as _ReviewsReceived;

  @override
  $Res call({
    Object failureOrReviews = freezed,
  }) {
    return _then(_ReviewsReceived(
      failureOrReviews == freezed
          ? _value.failureOrReviews
          : failureOrReviews as Either<ReviewFailure, ReviewsResultModel>,
    ));
  }
}

class _$_ReviewsReceived implements _ReviewsReceived {
  const _$_ReviewsReceived(this.failureOrReviews)
      : assert(failureOrReviews != null);

  @override
  final Either<ReviewFailure, ReviewsResultModel> failureOrReviews;

  @override
  String toString() {
    return 'ReviewsWatcherEvent.reviewsReceived(failureOrReviews: $failureOrReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsReceived &&
            (identical(other.failureOrReviews, failureOrReviews) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrReviews, failureOrReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrReviews);

  @override
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith =>
      __$ReviewsReceivedCopyWithImpl<_ReviewsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(String productId),
    @required
        Result reviewsReceived(
            Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
  }) {
    assert(watchAllStarted != null);
    assert(reviewsReceived != null);
    return reviewsReceived(failureOrReviews);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(String productId),
    Result reviewsReceived(
        Either<ReviewFailure, ReviewsResultModel> failureOrReviews),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewsReceived != null) {
      return reviewsReceived(failureOrReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result reviewsReceived(_ReviewsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(reviewsReceived != null);
    return reviewsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result reviewsReceived(_ReviewsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reviewsReceived != null) {
      return reviewsReceived(this);
    }
    return orElse();
  }
}

abstract class _ReviewsReceived implements ReviewsWatcherEvent {
  const factory _ReviewsReceived(
          Either<ReviewFailure, ReviewsResultModel> failureOrReviews) =
      _$_ReviewsReceived;

  Either<ReviewFailure, ReviewsResultModel> get failureOrReviews;
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith;
}

class _$ReviewsWatcherStateTearOff {
  const _$ReviewsWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(ReviewsResultModel reviewsResultModel) {
    return _LoadSuccess(
      reviewsResultModel,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ReviewFailure reviewFailure) {
    return _LoadFailure(
      reviewFailure,
    );
  }
}

// ignore: unused_element
const $ReviewsWatcherState = _$ReviewsWatcherStateTearOff();

mixin _$ReviewsWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(ReviewsResultModel reviewsResultModel),
    @required Result loadFailure(ReviewFailure reviewFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(ReviewsResultModel reviewsResultModel),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ReviewsWatcherStateCopyWith<$Res> {
  factory $ReviewsWatcherStateCopyWith(
          ReviewsWatcherState value, $Res Function(ReviewsWatcherState) then) =
      _$ReviewsWatcherStateCopyWithImpl<$Res>;
}

class _$ReviewsWatcherStateCopyWithImpl<$Res>
    implements $ReviewsWatcherStateCopyWith<$Res> {
  _$ReviewsWatcherStateCopyWithImpl(this._value, this._then);

  final ReviewsWatcherState _value;
  // ignore: unused_field
  final $Res Function(ReviewsWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ReviewsWatcherStateCopyWithImpl<$Res>
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
    return 'ReviewsWatcherState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(ReviewsResultModel reviewsResultModel),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(ReviewsResultModel reviewsResultModel),
    Result loadFailure(ReviewFailure reviewFailure),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewsWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ReviewsWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ReviewsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(ReviewsResultModel reviewsResultModel),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(ReviewsResultModel reviewsResultModel),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ReviewsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({ReviewsResultModel reviewsResultModel});

  $ReviewsResultModelCopyWith<$Res> get reviewsResultModel;
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ReviewsWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object reviewsResultModel = freezed,
  }) {
    return _then(_LoadSuccess(
      reviewsResultModel == freezed
          ? _value.reviewsResultModel
          : reviewsResultModel as ReviewsResultModel,
    ));
  }

  @override
  $ReviewsResultModelCopyWith<$Res> get reviewsResultModel {
    if (_value.reviewsResultModel == null) {
      return null;
    }
    return $ReviewsResultModelCopyWith<$Res>(_value.reviewsResultModel,
        (value) {
      return _then(_value.copyWith(reviewsResultModel: value));
    });
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.reviewsResultModel)
      : assert(reviewsResultModel != null);

  @override
  final ReviewsResultModel reviewsResultModel;

  @override
  String toString() {
    return 'ReviewsWatcherState.loadSuccess(reviewsResultModel: $reviewsResultModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.reviewsResultModel, reviewsResultModel) ||
                const DeepCollectionEquality()
                    .equals(other.reviewsResultModel, reviewsResultModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviewsResultModel);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(ReviewsResultModel reviewsResultModel),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(reviewsResultModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(ReviewsResultModel reviewsResultModel),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(reviewsResultModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ReviewsWatcherState {
  const factory _LoadSuccess(ReviewsResultModel reviewsResultModel) =
      _$_LoadSuccess;

  ReviewsResultModel get reviewsResultModel;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure reviewFailure});

  $ReviewFailureCopyWith<$Res> get reviewFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ReviewsWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object reviewFailure = freezed,
  }) {
    return _then(_LoadFailure(
      reviewFailure == freezed
          ? _value.reviewFailure
          : reviewFailure as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get reviewFailure {
    if (_value.reviewFailure == null) {
      return null;
    }
    return $ReviewFailureCopyWith<$Res>(_value.reviewFailure, (value) {
      return _then(_value.copyWith(reviewFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.reviewFailure) : assert(reviewFailure != null);

  @override
  final ReviewFailure reviewFailure;

  @override
  String toString() {
    return 'ReviewsWatcherState.loadFailure(reviewFailure: $reviewFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.reviewFailure, reviewFailure) ||
                const DeepCollectionEquality()
                    .equals(other.reviewFailure, reviewFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(ReviewsResultModel reviewsResultModel),
    @required Result loadFailure(ReviewFailure reviewFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(ReviewsResultModel reviewsResultModel),
    Result loadFailure(ReviewFailure reviewFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(reviewFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ReviewsWatcherState {
  const factory _LoadFailure(ReviewFailure reviewFailure) = _$_LoadFailure;

  ReviewFailure get reviewFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
