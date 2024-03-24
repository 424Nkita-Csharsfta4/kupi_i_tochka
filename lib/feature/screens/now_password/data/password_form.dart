import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_textfield/text_field.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  late bool isPasswordEntered;
  late bool isConfirmPasswordEntered;

  @override
  void initState() {
    super.initState();
    isPasswordEntered = false;
    isConfirmPasswordEntered = false;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: _passwordController,
          hintText: S.of(context).Password,
          obscureText: true,
          onChanged: (value) {
            setState(() {
              isPasswordEntered = value.isNotEmpty;
            });
          },
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: _confirmPasswordController,
          hintText: S.of(context).Confirmpassword,
          obscureText: true,
          onChanged: (value) {
            setState(() {
              isConfirmPasswordEntered = value.isNotEmpty;
            });
          },
        ),
        const SizedBox(height: 20),
        CustomElevatedButton(
          onPressed: () {},
          text: S.of(context).Acknowledge,
          color: isPasswordEntered && isConfirmPasswordEntered
              ? Colors.pink
              : Colors.grey,
        ),
      ],
    );
  }
}
