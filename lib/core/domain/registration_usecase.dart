import 'package:kupi_i_tochka/core/data/registration_repository.dart';
import 'package:kupi_i_tochka/core/domain/models.dart';

class RegistrationUsecase {
  final RegistrationRepository _repository;

  RegistrationUsecase(this._repository);

  Future<User> execute(String phoneNumber, String password) async {
    return await _repository.register(phoneNumber, password);
  }
}
