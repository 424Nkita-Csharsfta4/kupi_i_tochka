import 'package:kupi_i_tochka/core/domain/models.dart';

abstract class RegistrationRepository {
  Future<User> register(String phoneNumber, String password);
}

class RegistrationRepositoryImpl implements RegistrationRepository {
  @override
  Future<User> register(String phoneNumber, String password) {
    return Future.value(User(phoneNumber: '', password: ''));
  }
}
