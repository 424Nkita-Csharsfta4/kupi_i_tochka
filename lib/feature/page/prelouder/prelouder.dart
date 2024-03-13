import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/cubit/prelouder_cubit.dart';
import 'package:kupi_i_tochka/core/presentation/screens/login_screen.dart';

class Prelouder extends StatelessWidget {
  const Prelouder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoaderCubit(),
      child: BlocBuilder<LoaderCubit, LoaderState>(
        builder: (context, state) {
          return Stack(
            children: [
              _buildContent(context),
              if (state is LoaderVisible) _buildLoader(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoader() {
    return const Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    // Добавляем задержку перед переходом на LoginScreen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    });

    return Container(
      color: const Color(0xfffff8f9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 241.69),
            padding: const EdgeInsets.fromLTRB(21.72, 15.39, 13.59, 24.65),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://sun9-30.userapi.com/impg/uwBzlrLH92MV23gY_Py8UHYhB6JHcnj3syDk4Q/e5MooVFECuw.jpg?size=114x114&quality=96&sign=8ffe2d76d64a67c9849cdf0fa3c4ce92&type=album'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
          ),
        ],
      ),
    );
  }
}
