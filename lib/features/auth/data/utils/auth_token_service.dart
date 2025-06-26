import 'package:mpit_final_2024_app/generated_code/client_index.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthTokenService {
  Future<AuthTokenDto?> refresh();
  String? getAccessToken();
  String? getRefreshToken();
  String? getAuthorizationHeader();
  void setAccessToken(String? accessToken);
  void setRefreshToken(String? accessToken);
}

@Singleton(as: AuthTokenService)
class AuthTokenServiceImpl implements AuthTokenService {
  final Logger logger;
  final SharedPreferences sharedPreferences;

  AuthTokenServiceImpl({required this.logger, required this.sharedPreferences});

  static const _refreshTokenKey = 'refreshToken';
  static const String _tokenType = 'Bearer';

  String? _accessToken;
  late String? _refreshToken = sharedPreferences.getString(_refreshTokenKey);

  @override
  String? getAccessToken() {
    return _accessToken;
  }

  @override
  String? getRefreshToken() {
    return _refreshToken;
  }

  @override
  Future<AuthTokenDto?> refresh() async {
    if (_refreshToken == null) {
      return null;
    }
    final authTokenResponse = await sl<RestApi>().v1AuthRefreshPost(
      body: RefreshTokenDto(refreshToken: _refreshToken!),
    );
    if (authTokenResponse.body == null) {
      logger.e(authTokenResponse.error);
      return null;
    }
    final authToken = authTokenResponse.body!;
    setAccessToken(authToken.accessToken);
    setRefreshToken(authToken.refreshToken);
    return authToken;
  }

  @override
  void setAccessToken(String? accessToken) {
    _accessToken = accessToken;
  }

  @override
  void setRefreshToken(String? refreshToken) {
    _refreshToken = refreshToken;
    if (refreshToken == null) {
      sharedPreferences.remove(_refreshTokenKey);
    } else {
      sharedPreferences.setString(_refreshTokenKey, _refreshToken!);
    }
  }

  @override
  String? getAuthorizationHeader() {
    return '$_tokenType $_accessToken';
  }
}
