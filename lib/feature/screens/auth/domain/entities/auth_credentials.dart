import 'package:kupi_i_tochka/feature/screens/auth/data/model/auth_credentials.dart';

class AuthCredentials {
  final String jvtToken;

  const AuthCredentials(this.jvtToken);

  factory AuthCredentials.fromModel(AuthCredentialsModel model) =>
      AuthCredentials(model.jvtToken);
}
