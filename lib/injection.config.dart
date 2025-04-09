// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'core/modules/logger_module.dart' as _i1019;
import 'core/modules/network_module.dart' as _i401;
import 'core/modules/shared_preferences_module.dart' as _i1007;
import 'core/routes/router.dart' as _i66;
import 'features/articles/data/repositories/articles_repository_impl.dart'
    as _i943;
import 'features/articles/domain/repositories/articles_repository.dart'
    as _i508;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i111;
import 'features/auth/data/repositories/users_repository_impl.dart' as _i86;
import 'features/auth/data/utils/auth_token_service.dart' as _i250;
import 'features/auth/domain/cubit/auth_cubit.dart' as _i709;
import 'features/auth/domain/repositories/auth_repository.dart' as _i1015;
import 'features/auth/domain/repositories/users_repository.dart' as _i736;
import 'features/chatbot/data/repositories/chatbot_repository_impl.dart'
    as _i613;
import 'features/chatbot/domain/repositories/chatbot_repository.dart' as _i327;
import 'features/help_requests/data/repositories/help_requests_repository_impl.dart'
    as _i511;
import 'features/help_requests/domain/cubit/help_requests_list_cubit.dart'
    as _i114;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i711;
import 'generated_code/client_index.dart' as _i87;
import 'generated_code/rest_api.swagger.dart' as _i435;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final loggerModule = _$LoggerModule();
    final networkModule = _$NetworkModule();
    final injectionModule = _$InjectionModule();
    gh.singleton<_i66.AppRouter>(() => _i66.AppRouter());
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i435.RestApi>(() => networkModule.restApi);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i711.HelpRequestsRepository>(
        () => _i511.HelpRequestsRepositoryImpl(restApi: gh<_i435.RestApi>()));
    gh.factory<_i327.ChatbotRepository>(
        () => _i613.ChatbotRepositoryImpl(restApi: gh<_i435.RestApi>()));
    gh.factory<_i736.UsersRepository>(() => _i86.UsersRepositoryImpl(
          restApi: gh<_i435.RestApi>(),
          logger: gh<_i974.Logger>(),
        ));
    gh.factory<_i114.HelpRequestsListCubit>(() => _i114.HelpRequestsListCubit(
        helpRequestsRepository: gh<_i711.HelpRequestsRepository>()));
    gh.factory<_i508.ArticlesRepository>(
        () => _i943.ArticlesRepositoryImpl(restApi: gh<_i435.RestApi>()));
    gh.singleton<_i250.AuthTokenService>(() => _i250.AuthTokenServiceImpl(
          logger: gh<_i974.Logger>(),
          sharedPreferences: gh<_i460.SharedPreferences>(),
        ));
    gh.factory<_i401.AccessTokenInterceptor>(() => _i401.AccessTokenInterceptor(
        authTokenService: gh<_i250.AuthTokenService>()));
    gh.factory<_i1015.AuthRepository>(() => _i111.AuthRepositoryImpl(
          restApi: gh<_i87.RestApi>(),
          usersRepository: gh<_i736.UsersRepository>(),
          authTokenService: gh<_i250.AuthTokenService>(),
          logger: gh<_i974.Logger>(),
        ));
    gh.factory<_i709.AuthCubit>(() => _i709.AuthCubit(
          authRepository: gh<_i1015.AuthRepository>(),
          usersRepository: gh<_i736.UsersRepository>(),
          logger: gh<_i974.Logger>(),
        ));
    return this;
  }
}

class _$LoggerModule extends _i1019.LoggerModule {}

class _$NetworkModule extends _i401.NetworkModule {}

class _$InjectionModule extends _i1007.InjectionModule {}
