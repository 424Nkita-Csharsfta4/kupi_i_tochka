import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_event_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/login/login_state_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/screens/registration_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/widget/languageBar/language_selector.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

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
            backgroundColor: Colors.grey[50],
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: const [
              LanguageSelector(),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: S.of(context).Entrance),
                Tab(text: S.of(context).Registration),
              ],
              indicatorColor: Colors.pink,
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
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                labelText: S.of(context).Phonenumber,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                ),
                prefixIcon: const Icon(Icons.phone),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: _isObscurePassword,
              decoration: InputDecoration(
                labelText: S.of(context).Password,
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
                      return Colors.pink.withOpacity(0.5);
                    }
                    return Colors.pink;
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
              child: Text(
                S.of(context).Password,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/recovery_password');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.pink,
              ),
              child: Text(S.of(context).Forgotyourpassword),
            ),
          ],
        ),
      ),
    );
  }
}
