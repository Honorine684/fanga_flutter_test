import '../value_objects/failures.dart';
import '../value_objects/password.dart';

String? handlePasswordError(Password password) {
  if (!password.isValid()) {
    return password.value.fold((l) {
      if (l is InvalidEmail) {
        return null;
      } else if (l is ShortPassword) {
        return 'Password is short';
      } else if (l is PasswordWithoutSpecialChar) {
        return 'Password must contain a special character';
      } else if (l is PasswordWithoutNumber) {
        return 'Password must contain a number';
      }
      return null;
    }, (r) => null);
  }

  return null;
}
