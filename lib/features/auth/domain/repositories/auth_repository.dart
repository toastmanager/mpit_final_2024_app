import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';

abstract class AuthRepository {
  Future<UserSensitiveDto?> loadMe();
  // Future<UserSensitiveDto> updateMe(UpdateMeDto form, String? avatarPath);
  Future<AuthTokenDto?> verifyCode(String tel, String code);
  Future<void> requestCode(String tel);
  Future<void> logout();
}
