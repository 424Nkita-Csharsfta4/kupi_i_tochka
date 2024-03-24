// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomCodeTextField extends StatefulWidget {
  final TextEditingController controller;

  const CustomCodeTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  _CustomCodeTextFieldState createState() => _CustomCodeTextFieldState();
}

class _CustomCodeTextFieldState extends State<CustomCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 50,
      child: TextField(
        controller: widget.controller,
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: (value) {
          setState(() {});
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
