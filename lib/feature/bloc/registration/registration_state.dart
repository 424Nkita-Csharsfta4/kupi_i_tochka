import 'package:kupi_i_tochka/core/data/model/models.dart';

abstract class RegistrationState {}

class RegistrationInitial extends RegistrationState {}

class RegistrationLoading extends RegistrationState {}

class RegistrationSuccess extends RegistrationState {
  final User user;

  RegistrationSuccess(this.user);
}

class RegistrationFailure extends RegistrationState {}
