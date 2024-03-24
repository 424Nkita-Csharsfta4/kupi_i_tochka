import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_textfield/text_field.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _isChecked = false;
  final bool _isObscurePassword = true;
  final bool _isObscureRepeatPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(height: 16),
          CustomTextField(
            controller: TextEditingController(),
            hintText: S.of(context).Repeatthepassword,
            obscureText: _isObscureRepeatPassword,
            onChanged: (value) {},
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            title: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: S.of(context).Iagreewith,
                    style: const TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: S.of(context).Termsandconditionsofuse,
                    style: const TextStyle(color: ColorCollection.pink_A700),
                  ),
                ],
              ),
            ),
            value: _isChecked,
            onChanged: (newValue) {
              setState(() {
                _isChecked = newValue ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
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
            child: Text(
              S.of(context).Registration,
              style: const TextStyle(color: ColorCollection.white_A700),
            ),
          ),
        ],
      ),
    );
  }
}
