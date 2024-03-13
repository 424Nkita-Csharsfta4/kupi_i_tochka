import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/screens/login_screen.dart';
import 'package:kupi_i_tochka/feature/page/prelouder/prelouder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Prelouder(),
    );
  }
}
