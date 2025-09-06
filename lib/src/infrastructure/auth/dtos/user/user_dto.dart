import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/_commons/user/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  factory UserDto({
    required String? id,
    String? firstName,
    String? lastName,
    required String? email,
    String? phone,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      lastName: user.lastName ?? '',
      firstName: user.firstName ?? '',
      email: user.email ?? '',
      phone: user.phone ?? '',
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      id: id,
      lastName: lastName,
      firstName: firstName,
      email: email,
      phone: phone,
    );
  }

  User user() {
    return User(
      id: id,
      lastName: lastName,
      firstName: firstName,
      email: email,
      phone: phone,
    );
  }
}
