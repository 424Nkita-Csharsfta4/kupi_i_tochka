import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_event_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_state_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/screens/registration_screen.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(LoginInitial()),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorCollection.gray_50,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.translate),
                onPressed: () {},
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Вход'),
                Tab(text: 'Регистрация'),
              ],
              indicatorColor: ColorCollection.pink_A700,
            ),
          ),
          body: const TabBarView(
            children: [
              LoginForm(),
              RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Номер телефона',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              prefixIcon: Icon(Icons.phone),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                borderSide: BorderSide(color: Colors.pink),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            obscureText: _isObscurePassword,
            decoration: InputDecoration(
              labelText: 'Пароль',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              prefixIcon: const Icon(Icons.lock),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                borderSide: BorderSide(color: Colors.pink),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscurePassword = !_isObscurePassword;
                  });
                },
                icon: Icon(_isObscurePassword
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<LoginBloc>(context).add(
                LoginButtonPressed(phoneNumber: '', password: ''),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return ColorCollection.primary.withOpacity(0.5);
                  }
                  return ColorCollection.primary;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              fixedSize: MaterialStateProperty.all<Size>(
                const Size.fromHeight(50.0),
              ),
            ),
            child: const Text(
              'Войти',
              style: TextStyle(color: ColorCollection.white_A700),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: ColorCollection.pink_A700,
            ),
            child: const Text('Забыли пароль?'),
          ),
        ],
      ),
    );
  }
}
