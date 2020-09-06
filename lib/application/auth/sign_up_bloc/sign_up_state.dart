part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required BirthDate birthDate,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, UserResult>> authFailureOrSuccess,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        birthDate: BirthDate(
            '${DateTime.now().year.toString()}-${DateTime.now().month.toString()}-${DateTime.now().day.toString()}'),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
