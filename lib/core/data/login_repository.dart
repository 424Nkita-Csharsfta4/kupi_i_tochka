import 'package:kupi_i_tochka/core/data/model/models.dart';

abstract class LoginRepository {
  Future<User> login(String phoneNumber, String password);
}

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<User> login(String phoneNumber, String password) {
    return Future.value(User(phoneNumber: '', password: ''));
  }
}
