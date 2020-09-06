// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewFailureTearOff {
  const _$ReviewFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  NotAuthorizedError notAuthorizedError() {
    return const NotAuthorizedError();
  }

// ignore: unused_element
  BadConnectionError badConnectionError() {
    return const BadConnectionError();
  }

// ignore: unused_element
  DublicateReview dublicateReview() {
    return const DublicateReview();
  }

// ignore: unused_element
  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

// ignore: unused_element
const $ReviewFailure = _$ReviewFailureTearOff();

mixin _$ReviewFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  });
}

abstract class $ReviewFailureCopyWith<$Res> {
  factory $ReviewFailureCopyWith(
          ReviewFailure value, $Res Function(ReviewFailure) then) =
      _$ReviewFailureCopyWithImpl<$Res>;
}

class _$ReviewFailureCopyWithImpl<$Res>
    implements $ReviewFailureCopyWith<$Res> {
  _$ReviewFailureCopyWithImpl(this._value, this._then);

  final ReviewFailure _value;
  // ignore: unused_field
  final $Res Function(ReviewFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$ReviewFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ReviewFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ReviewFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $NotAuthorizedErrorCopyWith<$Res> {
  factory $NotAuthorizedErrorCopyWith(
          NotAuthorizedError value, $Res Function(NotAuthorizedError) then) =
      _$NotAuthorizedErrorCopyWithImpl<$Res>;
}

class _$NotAuthorizedErrorCopyWithImpl<$Res>
    extends _$ReviewFailureCopyWithImpl<$Res>
    implements $NotAuthorizedErrorCopyWith<$Res> {
  _$NotAuthorizedErrorCopyWithImpl(
      NotAuthorizedError _value, $Res Function(NotAuthorizedError) _then)
      : super(_value, (v) => _then(v as NotAuthorizedError));

  @override
  NotAuthorizedError get _value => super._value as NotAuthorizedError;
}

class _$NotAuthorizedError implements NotAuthorizedError {
  const _$NotAuthorizedError();

  @override
  String toString() {
    return 'ReviewFailure.notAuthorizedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAuthorizedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return notAuthorizedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthorizedError != null) {
      return notAuthorizedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return notAuthorizedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthorizedError != null) {
      return notAuthorizedError(this);
    }
    return orElse();
  }
}

abstract class NotAuthorizedError implements ReviewFailure {
  const factory NotAuthorizedError() = _$NotAuthorizedError;
}

abstract class $BadConnectionErrorCopyWith<$Res> {
  factory $BadConnectionErrorCopyWith(
          BadConnectionError value, $Res Function(BadConnectionError) then) =
      _$BadConnectionErrorCopyWithImpl<$Res>;
}

class _$BadConnectionErrorCopyWithImpl<$Res>
    extends _$ReviewFailureCopyWithImpl<$Res>
    implements $BadConnectionErrorCopyWith<$Res> {
  _$BadConnectionErrorCopyWithImpl(
      BadConnectionError _value, $Res Function(BadConnectionError) _then)
      : super(_value, (v) => _then(v as BadConnectionError));

  @override
  BadConnectionError get _value => super._value as BadConnectionError;
}

class _$BadConnectionError implements BadConnectionError {
  const _$BadConnectionError();

  @override
  String toString() {
    return 'ReviewFailure.badConnectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BadConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return badConnectionError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badConnectionError != null) {
      return badConnectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return badConnectionError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badConnectionError != null) {
      return badConnectionError(this);
    }
    return orElse();
  }
}

abstract class BadConnectionError implements ReviewFailure {
  const factory BadConnectionError() = _$BadConnectionError;
}

abstract class $DublicateReviewCopyWith<$Res> {
  factory $DublicateReviewCopyWith(
          DublicateReview value, $Res Function(DublicateReview) then) =
      _$DublicateReviewCopyWithImpl<$Res>;
}

class _$DublicateReviewCopyWithImpl<$Res>
    extends _$ReviewFailureCopyWithImpl<$Res>
    implements $DublicateReviewCopyWith<$Res> {
  _$DublicateReviewCopyWithImpl(
      DublicateReview _value, $Res Function(DublicateReview) _then)
      : super(_value, (v) => _then(v as DublicateReview));

  @override
  DublicateReview get _value => super._value as DublicateReview;
}

class _$DublicateReview implements DublicateReview {
  const _$DublicateReview();

  @override
  String toString() {
    return 'ReviewFailure.dublicateReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DublicateReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return dublicateReview();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dublicateReview != null) {
      return dublicateReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return dublicateReview(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dublicateReview != null) {
      return dublicateReview(this);
    }
    return orElse();
  }
}

abstract class DublicateReview implements ReviewFailure {
  const factory DublicateReview() = _$DublicateReview;
}

abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$ReviewFailureCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'ReviewFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notAuthorizedError(),
    @required Result badConnectionError(),
    @required Result dublicateReview(),
    @required Result unexpectedError(),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notAuthorizedError(),
    Result badConnectionError(),
    Result dublicateReview(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notAuthorizedError(NotAuthorizedError value),
    @required Result badConnectionError(BadConnectionError value),
    @required Result dublicateReview(DublicateReview value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(serverError != null);
    assert(notAuthorizedError != null);
    assert(badConnectionError != null);
    assert(dublicateReview != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notAuthorizedError(NotAuthorizedError value),
    Result badConnectionError(BadConnectionError value),
    Result dublicateReview(DublicateReview value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements ReviewFailure {
  const factory UnexpectedError() = _$UnexpectedError;
}
