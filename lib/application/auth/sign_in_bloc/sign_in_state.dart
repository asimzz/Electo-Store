part of 'sign_in_bloc.dart';

@freezed
abstract class LogInState with _$LogInState {
  const factory LogInState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, UserResult>> authFailureOrSuccess,
  }) = _LogInState;

  factory LogInState.initial() => LogInState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
