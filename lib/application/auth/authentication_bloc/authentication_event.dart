part of 'authentication_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequseted() = AuthCheckRequseted;
  const factory AuthEvent.signedOut() = SignedOut;
}
