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

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final SharedPreferences sharedPreferences;
  final IAuthRepository _authRepository;

  LogInBloc(
    this._authRepository,
    this.sharedPreferences,
  ) : super(LogInState.initial());
  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
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
      logInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthRepositoryWithEmailAndPassword(
            _authRepository.logInInWithEmailAndPassword);
      },
    );
  }

  Stream<LogInState> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, UserResult>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, UserResult> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
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
