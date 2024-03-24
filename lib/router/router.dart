import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/screens/auth/login/presintation/login_form.dart';
import 'package:kupi_i_tochka/feature/screens/main_screen/main_screen.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/search_bar/search_bar.dart';
import 'package:kupi_i_tochka/feature/screens/now_password/presentation/now_password.dart';
import 'package:kupi_i_tochka/feature/screens/prelouder/prelouder.dart';
import 'package:kupi_i_tochka/feature/screens/recovery_password/recovery_password.dart';
import 'package:kupi_i_tochka/feature/screens/write_code/write_code.dart';
import 'package:kupi_i_tochka/feature/screens/auth/registration/presentation/registration_screen.dart';
import 'package:kupi_i_tochka/router/domain/shop_model_router.dart';

final router = GoRouter(
  initialLocation: KupiITochkaRoutes.mainScreen,
  routes: [
    GoRoute(
      path: KupiITochkaRoutes.initial,
      builder: (context, state) => const Prelouder(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.login,
      builder: (context, state) => const LoginForm(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.registration,
      builder: (context, state) => const RegistrationForm(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.nowPassword,
      builder: (context, state) => const NowPasswordPage(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.recoveryPassword,
      builder: (context, state) => const RecoveryPasswordPage(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.writeCode,
      builder: (context, state) => const WriteCode(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.searchBar,
      builder: (context, state) => const SearchBars(),
    ),
    GoRoute(
      path: KupiITochkaRoutes.mainScreen,
      builder: (context, state) => const MainScreen(
        items: [],
      ),
    )
  ],
);
