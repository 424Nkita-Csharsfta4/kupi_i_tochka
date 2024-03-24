import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/feature/bloc/login/login_bloc.dart';
import 'package:kupi_i_tochka/feature/bloc/login/login_state_bloc.dart';
import 'package:kupi_i_tochka/feature/screens/auth/login/presintation/login_form.dart';
import 'package:kupi_i_tochka/feature/screens/auth/registration/presentation/registration_screen.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(LoginInitial()),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: S.of(context).Entrance),
                Tab(text: S.of(context).Registration),
              ],
              indicatorColor: Colors.pink,
            ),
          ),
          body: const TabBarView(
            children: [
              LoginForm(),
              RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
