part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory SignUpEvent.birthDateChanged(String birthDateStr) =
      BirthDateChanged;
  const factory SignUpEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}
