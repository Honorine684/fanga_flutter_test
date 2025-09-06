import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'auth_response.freezed.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({required User? user, required String? token}) =
      _AuthResponse;
}
