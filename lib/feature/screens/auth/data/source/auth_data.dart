import 'package:kupi_i_tochka/core/data/remote_response.dart';
import 'package:kupi_i_tochka/feature/screens/auth/data/model/auth_credentials.dart';

abstract class AuthDataSource {
  Future<RemoteResponse<AuthCredentialsModel>> signIn({
    required String phone,
    required String password,
  });

  Future<RemoteResponse<AuthCredentialsModel>> signUp({
    required String phone,
    required String password,
  });
}
