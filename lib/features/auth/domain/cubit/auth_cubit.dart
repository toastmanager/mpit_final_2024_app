import 'package:mpit_final_2024_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mpit_final_2024_app/features/auth/domain/repositories/users_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;
  final UsersRepository usersRepository;
  final Logger logger;

  AuthCubit({
    required this.authRepository,
    required this.usersRepository,
    required this.logger,
  }) : super(AuthState.initial());

  Future<void> intialLoadMe() async {
    try {
      final user = await authRepository.loadMe();
      if (user == null) {
        throw Exception('Не удалось загрузить пользователя');
      }
      emit(AuthState.authorized(user: user));
    } catch (e) {
      emit(AuthState.unauthorized());
    }
  }

  Future<void> loadMe() async {
    emit(AuthState.loading());
    await intialLoadMe();
  }

  Future<void> logout() async {
    try {
      emit(AuthState.loading());
      final _ = await authRepository.logout();
      emit(AuthState.unauthorized());
    } catch (e) {
      emit(AuthState.error(message: 'Не удалось выйти из аккаунта'));
    }
  }

  Future<void> update(UpdateUserDto form, String? avatarPath) async {
    throw UnimplementedError();
    //   final updatedUser = await authRepository.updateMe(form, avatarPath);
    //   emit(AuthState.authorized(user: updatedUser));
  }

  Future<void> removeAvatar() async {
    throw UnimplementedError();
    //   final user = state.whenOrNull(authorized: (user) => user);
    //   if (user == null) {
    //     throw Exception('Не удалось получить пользователя');
    //   }
    //   final _ = await usersRepository.clearAvatar(user.id);
    //   final updatedUser = user.copyWith(avatarUrl: '');
    //   emit(AuthState.authorized(user: updatedUser));
  }

  void setUser(UserSensitiveDto user) async {
    emit(AuthState.authorized(user: user));
  }
}
