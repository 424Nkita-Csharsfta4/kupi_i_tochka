import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/domain/registration_usecase.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/registration/registration_event.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/registration/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationUsecase registrationUsecase;

  RegistrationBloc(this.registrationUsecase) : super(RegistrationInitial());

  Stream<RegistrationState> mapEventToState(RegistrationEvent event) async* {
    if (event is RegistrationButtonPressed) {
      yield RegistrationLoading();
      try {
        final user = await registrationUsecase.execute(
            event.phoneNumber, event.password);
        yield RegistrationSuccess(user);
      } catch (_) {
        yield RegistrationFailure();
      }
    }
  }
}
