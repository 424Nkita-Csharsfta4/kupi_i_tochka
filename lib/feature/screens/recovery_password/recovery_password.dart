import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/app_bar/app_bar.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_textfield/text_field.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class RecoveryPasswordPage extends StatefulWidget {
  const RecoveryPasswordPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RecoveryPasswordPageState createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isPasswordEntered = false;
  bool isConfirmPasswordEntered = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBars(),
          _buildTitleRow(),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Container(
      width: 390,
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xfffff8f9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Row(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      S.of(context).Newpassword,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 22,
                        color: Color(0xff211a1d),
                        fontFamily: 'Roboto-Medium',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).Setanewpasswordandconfirmittocompletethereset,
            textAlign: TextAlign.center,
            style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              color: Color(0xff4f4449),
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/write_code');
            },
            child: Text(
              S.of(context).Resendcode,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xffde3a75),
                fontFamily: 'Roboto-Medium',
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
