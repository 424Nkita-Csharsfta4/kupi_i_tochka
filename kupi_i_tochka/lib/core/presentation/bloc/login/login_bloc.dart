import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/domain/usecases.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_event_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_state_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUsecase;

  LoginBloc(LoginState initialState)
      : loginUsecase = ConcreteLoginUsecase(),
        super(initialState);

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();
      try {
        final user =
            await loginUsecase.execute(event.phoneNumber, event.password);
        yield LoginSuccess(user);
      } catch (_) {
        yield LoginFailure();
      }
    }
  }
}
