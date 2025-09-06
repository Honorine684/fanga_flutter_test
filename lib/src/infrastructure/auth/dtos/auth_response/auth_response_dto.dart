import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/_commons/auth_response/auth_response.dart';
import '../user/user_dto.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  factory AuthResponseDto({required UserDto? user, required String? token}) =
      _AuthResponseDto;

  factory AuthResponseDto.fromDomain(AuthResponse authResponse) {
    return AuthResponseDto(
      user: UserDto.fromDomain(authResponse.user!),
      token: authResponse.token,
    );
  }

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}

extension AuthResponseDtoX on AuthResponseDto {
  AuthResponse toDomain() {
    return AuthResponse(user: user?.toDomain(), token: token);
  }
}
