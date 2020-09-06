part of 'authentication_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated({
    @required UserResult userResult,
  }) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
