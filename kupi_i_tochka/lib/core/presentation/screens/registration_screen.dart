import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _isChecked = false;
  bool _isObscurePassword = true;
  bool _isObscureRepeatPassword = true;

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
          const SizedBox(height: 16),
          TextFormField(
            obscureText: _isObscureRepeatPassword,
            decoration: InputDecoration(
              labelText: 'Повторите пароль',
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
                    _isObscureRepeatPassword = !_isObscureRepeatPassword;
                  });
                },
                icon: Icon(_isObscureRepeatPassword
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            title: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                    text: 'Я согласен с ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Правилами и условиями использования',
                    style: TextStyle(color: ColorCollection.pink_A700),
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
            child: const Text(
              'Зарегистрироваться',
              style: TextStyle(color: ColorCollection.white_A700),
            ),
          ),
        ],
      ),
    );
  }
}
