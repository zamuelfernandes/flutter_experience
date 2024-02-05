// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:asyncstate/asyncstate.dart';
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/services/user_login_service.dart';
import 'package:signals_flutter/signals_flutter.dart';

class LoginController with MessagesStateMixin {
  final UserLoginService _loginService;

  LoginController({
    required UserLoginService loginService,
  }) : _loginService = loginService;

  final _obscurePassword = signal(true);
  bool get obscurePassword => _obscurePassword.value;

  final _logged = signal(false);
  bool get logged => _logged.value;

  void passwordToggle() {
    _obscurePassword.value = !_obscurePassword.value;
  }

  Future<void> login(String email, String password) async {
    final loginResult =
        await _loginService.execute(email, password).asyncLoader();

    switch (loginResult) {
      case Left(value: ServiceException(:final message)):
        //mostrar erro
        showError(message);
      case Right(value: _):
        //navegar para a home
        _logged.value = true;
    }
  }
}
