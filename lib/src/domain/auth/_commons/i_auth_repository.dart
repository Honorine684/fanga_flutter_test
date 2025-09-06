import 'package:dartz/dartz.dart';

import '../failure/auth_failure.dart';
import '../value_objects/email_address.dart';
import '../value_objects/password.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signUp({
    required EmailAddress emailAddress,
    required Password password,
    required firstName,
    required lastName,
    required phone,
  });

  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<AuthFailure, Unit>> setNewPassword({
    required String userId,
    required Password oldPassword,
    required Password newPassword,
  });
}
