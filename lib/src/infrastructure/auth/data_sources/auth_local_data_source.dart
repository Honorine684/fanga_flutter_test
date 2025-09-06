import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/auth/_commons/user/user.dart';
import '../../_commons/network/user_session.dart';
import '../dtos/auth_response/auth_response_dto.dart';
import '../dtos/user/user_dto.dart';

abstract class IAuthLocalDataSource {
  Future<bool> cacheUser(AuthResponseDto userDto);
  Future<bool> updateUser(User bUser);
}

const user = 'APP_USER';

class AuthLocalDataSource implements IAuthLocalDataSource {
  late SharedPreferences sharedPreferences;
  late UserSession userSession;
  AuthLocalDataSource({
    required this.sharedPreferences,
    required this.userSession,
  });

  @override
  Future<bool> cacheUser(AuthResponseDto authResponseDto) async {
    return sharedPreferences.setString(
      user,
      jsonEncode(authResponseDto.toJson()),
    );
  }

  @override
  Future<bool> updateUser(User bAUser) async {
    final AuthResponseDto? userDto = await userSession.getUserDto();
    if (userDto == null) return false;
    final AuthResponseDto authResponseDto = AuthResponseDto(
      user: UserDto.fromDomain(bAUser),
      token: userDto.token,
    );
    return sharedPreferences.setString(
      user,
      jsonEncode(authResponseDto.toJson()),
    );
  }
}
