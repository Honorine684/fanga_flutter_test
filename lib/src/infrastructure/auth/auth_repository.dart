import 'package:dartz/dartz.dart';

import '../../domain/auth/_commons/i_auth_repository.dart';
import '../../domain/auth/failure/auth_failure.dart';
import '../../domain/auth/value_objects/email_address.dart';
import '../../domain/auth/value_objects/password.dart';
import '../_commons/exceptions.dart';
import '../_commons/network/network_info.dart';
import 'data_sources/auth_local_data_source.dart';
import 'data_sources/auth_remote_data_source.dart';
import 'dtos/auth_response/auth_response_dto.dart';

class AuthRepository implements IAuthRepository {
  final INetworkInfo networkInfo;
  final IAuthLocalDataSource localDataSource;
  final IAuthRemoteDataSource remoteDataSource;
  AuthRepository({
    required this.networkInfo,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  }) async {
    if (await networkInfo.checkConnection()) {
      try {
        await remoteDataSource.resetPassword(
          email: emailAddress.value.toOption().toNullable()!,
        );
        return const Right(unit);
      } on UnauthorizedException catch (e) {
        return Left(Unauthorized(e.errorText));
      } on ServerException {
        return const Left(ServerError());
      }
    }
    return const Left(NoNetwork());
  }

  @override
  Future<Either<AuthFailure, Unit>> setNewPassword({
    required String userId,
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (await networkInfo.checkConnection()) {
      try {
        await remoteDataSource.updatePassword(
          oldPassword: oldPassword.value.toOption().toNullable()!,
          newPassword: newPassword.value.toOption().toNullable()!,
          userId: userId,
        );
        return const Right(unit);
      } on UnauthorizedException catch (e) {
        return Left(Unauthorized(e.errorText));
      } on ServerException {
        return const Left(ServerError());
      }
    }
    return const Left(NoNetwork());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (await networkInfo.checkConnection()) {
      try {
        final AuthResponseDto result = await remoteDataSource.login(
          email: emailAddress.value.toOption().toNullable()!,
          password: password.value.toOption().toNullable()!,
        );
        localDataSource.cacheUser(result);
        return const Right(unit);
      } on UnauthorizedException catch (e) {
        return Left(Unauthorized(e.errorText));
      } on ServerException {
        return const Left(ServerError());
      }
    }
    return const Left(NoNetwork());
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required EmailAddress emailAddress,
    required Password password,
    required firstName,
    required lastName,
    required phone,
  }) async {
    if (await networkInfo.checkConnection()) {
      try {
        final AuthResponseDto result = await remoteDataSource.signUp(
          email: emailAddress.value.toOption().toNullable()!,
          password: password.value.toOption().toNullable()!,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
        );
        localDataSource.cacheUser(result);
        return const Right(unit);
      } on UnauthorizedException catch (e) {
        return Left(Unauthorized(e.errorText));
      } on ServerException {
        return const Left(ServerError());
      }
    }
    return const Left(NoNetwork());
  }
}
