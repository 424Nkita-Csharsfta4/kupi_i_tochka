import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final ButtonStyle? style;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
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
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: 'Roboto-Medium',
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
