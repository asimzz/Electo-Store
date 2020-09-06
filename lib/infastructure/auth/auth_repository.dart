import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/auth/auth_failure.dart';
import 'package:electo_store/domain/auth/i_auth_repository.dart';
import 'package:electo_store/domain/auth/value_objects.dart';
import 'package:electo_store/domain/core/network/network_info.dart';
import 'package:electo_store/infastructure/auth/user/user_result_model.dart';
import 'package:electo_store/infastructure/core/token.dart';
import 'package:electo_store/infastructure/core/token_key/token_key.dart';
import 'package:http/http.dart' as http;

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const BASE_URL = 'https://electro-store-api.herokuapp.com/api/v1/auth';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final http.Client client;
  final NetworkInfo networkInfo;
  final SharedPreferences sharedPreferences;

  AuthRepository(
    this.client,
    this.networkInfo,
    this.sharedPreferences,
  );
  @override
  Future<Either<AuthFailure, UserResult>> getLoggedInUser() async {
    const FULL_URL = BASE_URL + '/me';
    final token = sharedPreferences.getString(TOKEN_KEY);
    if (token != null) {
      if (await networkInfo.isConnected) {
        final response = await client.get(
          FULL_URL,
          headers: {
            "Cookie": 'token=' + sharedPreferences.getString(TOKEN_KEY),
            "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
          },
        );

        if (response.statusCode == 200) {
          return right(
            UserResult.fromJson(
              json.decode(response.body),
            ),
          );
        } else if (response.statusCode == 401) {
          sharedPreferences.setString(TOKEN_KEY, 'none');
          return left(AuthFailure.notAuthorizedError());
        } else {
          return left(AuthFailure.serverError());
        }
      }
    } else if (token == null) {
      return left(AuthFailure.serverError());
    } else {
      return left(AuthFailure.badConnectionError());
    }
    return left(AuthFailure.unexpectedError());
  }

  @override
  Future<Either<AuthFailure, UserResult>> registerNewUser({
    Username username,
    EmailAddress emailAddress,
    Password password,
    BirthDate birthDate,
  }) async {
    final usernameStr = username.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final birthDateStr = birthDate.getOrCrash();
    const FULL_URL = BASE_URL + '/register';
    if (await networkInfo.isConnected) {
      final response = await client.post(FULL_URL,
          headers: {"Content-type": "application/json"},
          body: json.encode({
            'name': usernameStr,
            'email': emailAddressStr,
            'password': passwordStr,
            'birthDate': birthDateStr,
          }));

      if (response.statusCode == 201) {
        final hasToken = Token.fromJson(
          json.decode(response.body),
        );
        sharedPreferences.setString(TOKEN_KEY, hasToken.token);

        return getLoggedInUser();
      } else if (response.statusCode == 400) {
        return left(AuthFailure.emailAlreadyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    } else {
      return left(AuthFailure.badConnectionError());
    }
  }

  @override
  Future<Either<AuthFailure, UserResult>> logInInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    const FULL_URL = BASE_URL + '/login';

    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    if (await networkInfo.isConnected) {
      final response = await client.post(FULL_URL,
          headers: {"Content-type": "application/json"},
          body: json.encode({
            'email': emailAddressStr,
            'password': passwordStr,
          }));

      if (response.statusCode == 200) {
        final hasToken = Token.fromJson(
          json.decode(response.body),
        );
        sharedPreferences.setString(TOKEN_KEY, hasToken.token);

        return getLoggedInUser();
      } else if (response.statusCode == 400) {
        return left(AuthFailure.emailAlreadyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    } else {
      return left(AuthFailure.badConnectionError());
    }
  }

  @override
  Future<void> logOut() async {
    const FULL_URL = BASE_URL + '/logout';

    if (await networkInfo.isConnected) {
      final response = await client.get(
        FULL_URL,
        headers: {
          "Cookie": "token=" + sharedPreferences.getString(TOKEN_KEY),
          "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
        },
      );
      print(response.body);

      if (response.statusCode == 200) {
        sharedPreferences.setString(TOKEN_KEY, 'none');
        return null;
      } else {
        return left(AuthFailure.serverError());
      }
    } else {
      return left(AuthFailure.badConnectionError());
    }
  }

  @override
  Future<Unit> updatePassword({
    Password currentPassword,
    Password newPassword,
  }) {
    const FULL_URL = BASE_URL + '/updatepassword';
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
}
