import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/auth/auth_failure.dart';
import 'package:electo_store/infastructure/auth/user/user_result_model.dart';
import 'package:electo_store/infastructure/core/token_key/token_key.dart';
import 'package:electo_store/infastructure/core/user_id_key/user_id_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:electo_store/domain/auth/i_auth_repository.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final SharedPreferences _sharedPreferences;

  AuthBloc(
    this._authRepository,
    this._sharedPreferences,
  ) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequseted: (e) async* {
        final userOption = await _authRepository.getLoggedInUser();
        yield userOption.fold(
          (_) => const AuthState.unauthenticated(),
          (userResult) {
            _sharedPreferences.setString(USER_ID_KEY, userResult.data.id);
            return AuthState.authenticated(userResult: userResult);
          },
        );
      },
      signedOut: (e) async* {
        await _authRepository.logOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
