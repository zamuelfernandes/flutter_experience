import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';

abstract interface class UserLoginService {
  //UNIT É O VOID QUE NÓS CRIAMOS
  Future<Either<ServiceException, Unit>> execute(String email, String password);
}
