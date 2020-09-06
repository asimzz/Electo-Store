import 'package:dartz/dartz.dart';
import 'package:electo_store/infastructure/auth/user/user_result_model.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';

import 'value_objects.dart';

// Node.js JWT SIGNIN , Maybe I add GoogleSignIn but for I now I will leave it COMMENTED

abstract class IAuthRepository {
  Future<Either<AuthFailure, UserResult>> getLoggedInUser();

  Future<Either<AuthFailure, UserResult>> registerNewUser({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required BirthDate birthDate,
  });

  Future<Either<AuthFailure, UserResult>> logInInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  // Future<Either<AuthFailure, User>> signInWithGoogle();

  Future<void> logOut();

  Future<Unit> updatePassword({
    @required Password currentPassword,
    @required Password newPassword,
  });
}
