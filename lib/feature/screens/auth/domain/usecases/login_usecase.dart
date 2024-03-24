import 'package:kupi_i_tochka/feature/screens/auth/domain/entities/login_entity.dart';

abstract class LoginUseCase {
  Future<void> loginUser(LoginEntity loginData);
}
