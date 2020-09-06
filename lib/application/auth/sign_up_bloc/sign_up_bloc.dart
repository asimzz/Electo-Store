import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/auth/i_auth_repository.dart';
import 'package:electo_store/infastructure/auth/user/user_result_model.dart';
import 'package:electo_store/infastructure/core/token.dart';
import 'package:electo_store/infastructure/core/token_key/token_key.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SharedPreferences sharedPreferences;
  final IAuthRepository _authRepository;

  SignUpBloc(
    this._authRepository,
    this.sharedPreferences,
  ) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameStr),
          authFailureOrSuccess: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccess: none(),
        );
      },
      birthDateChanged: (e) async* {
        yield state.copyWith(
          birthDate: BirthDate(e.birthDateStr),
          authFailureOrSuccess: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authRepository.registerNewUser);
      },
    );
  }

  Stream<SignUpState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, UserResult>> Function({
      @required Username username,
      @required EmailAddress emailAddress,
      @required Password password,
      @required BirthDate birthDate,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, UserResult> failureOrSuccess;
    final isUsernameValid = state.username.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isBirthDateValid = state.birthDate.isValid();
    if (isEmailValid &&
        isPasswordValid &&
        isUsernameValid &&
        isBirthDateValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess = await forwardedCall(
        username: state.username,
        emailAddress: state.emailAddress,
        password: state.password,
        birthDate: state.birthDate,
      );

      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: some(failureOrSuccess),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
