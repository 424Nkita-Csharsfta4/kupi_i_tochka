abstract class RegistrationEvent {}

class RegistrationButtonPressed extends RegistrationEvent {
  final String phoneNumber;
  final String password;

  RegistrationButtonPressed(this.phoneNumber, this.password);
}
