import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/repositories/user/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './user_login_service.dart';

class UserLoginServiceImpl implements UserLoginService {
  final UserRepository userRepository;

  UserLoginServiceImpl({required this.userRepository});

  Future<Either<ServiceException, Unit>> execute(
    String email,
    String password,
  ) async {
    final loginResult = await userRepository.login(email, password);

    switch (loginResult) {
      case Left(value: AuthError(:final message)):
        log(message);
        return Left(ServiceException(message: 'Erro ao fazer login'));

      case Left(value: AuthUnauthorizedException()):
        return Left(ServiceException(message: 'Usuário ou senha inválidos'));

      case Right(value: final accessToken):
        final sp = await SharedPreferences.getInstance();

        sp.setString(LocalStorageConstants.accessToken, accessToken);
        return Right(unit);
    }
  }
}
