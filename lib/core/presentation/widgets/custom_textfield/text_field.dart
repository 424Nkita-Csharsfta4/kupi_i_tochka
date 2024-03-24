import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff81737a), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.lock,
                color: Color(0xff4f4449),
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                onChanged: onChanged,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: Color(0xff4f4449),
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                  color: Color(0xff4f4449),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
