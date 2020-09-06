part of 'sign_in_bloc.dart';

@freezed
abstract class LogInEvent with _$LogInEvent {
  const factory LogInEvent.emailChanged(String emailStr) = EmailChanged;

  const factory LogInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory LogInEvent.logInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;
}
