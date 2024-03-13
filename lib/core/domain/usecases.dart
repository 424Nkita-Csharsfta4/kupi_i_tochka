import 'package:kupi_i_tochka/core/data/login_repository.dart';
import 'package:kupi_i_tochka/core/domain/models.dart';

abstract class LoginUsecase {
  Future<User> execute(String phoneNumber, String password);
}

class ConcreteLoginUsecase implements LoginUsecase {
  final LoginRepository _repository;

  ConcreteLoginUsecase() : _repository = LoginRepositoryImpl();

  @override
  Future<User> execute(String phoneNumber, String password) async {
    return await _repository.login(phoneNumber, password);
  }
}
