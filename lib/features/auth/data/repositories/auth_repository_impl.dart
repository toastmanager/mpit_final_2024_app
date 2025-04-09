import 'package:mpit_final_2024_app/features/auth/data/utils/auth_token_service.dart';
import 'package:mpit_final_2024_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mpit_final_2024_app/features/auth/domain/repositories/users_repository.dart';
import 'package:mpit_final_2024_app/generated_code/client_index.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final RestApi restApi;
  final UsersRepository usersRepository;
  final AuthTokenService authTokenService;
  final Logger logger;

  const AuthRepositoryImpl({
    required this.restApi,
    required this.usersRepository,
    required this.authTokenService,
    required this.logger,
  });

  @override
  Future<UserSensitiveDto?> loadMe() async {
    try {
      final userResponse = await restApi.v1AuthMeGet();
      if (userResponse.error != null) {
        throw Exception(userResponse.error);
      }
      final user = userResponse.body;
      return user;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      final refreshToken = authTokenService.getRefreshToken();
      if (refreshToken == null) {
        return;
      }
      await restApi.v1AuthLogoutPost(
        body: LogoutDto(refreshToken: refreshToken),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> requestCode(String tel) async {
    final response = await restApi.v1AuthOtpRequestPost(
      body: RequestOTPDto(tel: tel),
    );
    if (response.error != null) {
      logger.e(response.error);
    }
  }

  @override
  Future<AuthTokenDto?> verifyCode(String tel, String code) async {
    final response = await restApi.v1AuthOtpVerifyPost(
      body: VerifyOTPDto(tel: tel, otp: code),
    );
    final authToken = response.body;
    if (authToken != null) {
      authTokenService.setAccessToken(authToken.accessToken);
      authTokenService.setRefreshToken(authToken.refreshToken);
    }
    return authToken;
  }

  // @override
  // Future<UserSensitiveDto> updateMe(
  //   UpdateMeDto form,
  //   String? avatarPath,
  // ) async {
  //   try {
  //     if (avatarPath != null) {
  //       await restApi.apiV1AuthMeAvatarPut(file: avatarPath);
  //     }
  //     final response = (await restApi.apiV1AuthMePut(body: form));
  //     if (response.error != null) {
  //       if (response.statusCode == 409) {
  //         throw Exception('Пользователь с такими данными уже существует');
  //       }
  //       throw response.error!;
  //     }
  //     final user = response.body;
  //     if (user == null) {
  //       logger.e(response.error);
  //       throw Exception('received empty user while tried to update');
  //     }
  //     return user;
  //   } catch (e) {
  //     logger.e(e);
  //     rethrow;
  //   }
  // }
}
