import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/page/login/presentation/login_screen.dart';

import 'package:kupi_i_tochka/feature/page/prelouder/prelouder.dart';
import 'package:kupi_i_tochka/feature/page/recovey_password/now_password.dart';
import 'package:kupi_i_tochka/feature/page/recovey_password/recovert_password.dart';
import 'package:kupi_i_tochka/feature/page/recovey_password/write_code.dart';
import 'package:kupi_i_tochka/feature/page/registration/presentation/registration_screen.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Prelouder(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/registration',
      builder: (context, state) => const RegistrationForm(),
    ),
    GoRoute(
      path: '/now_password',
      builder: (context, state) => const NowPassword(),
    ),
    GoRoute(
      path: '/recovery_password',
      builder: (context, state) => const RecoveyPassword(),
    ),
    GoRoute(
      path: '/write_code',
      builder: (context, state) => const WriteCode(),
    ),
  ],
);
