import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_textfield/text_field.dart';
import 'package:kupi_i_tochka/feature/bloc/login/login_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/bloc/login/login_event_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final bool _isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).Phonenumber,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).Password,
              obscureText: _isObscurePassword,
              onChanged: (value) {},
            ),
            const SizedBox(height: 32),
            CustomElevatedButton(
              onPressed: () {
                BlocProvider.of<LoginBloc>(context).add(
                  LoginButtonPressed(phoneNumber: '', password: ''),
                );
              },
              text: S.of(context).Password,
              color: Colors.pink,
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
