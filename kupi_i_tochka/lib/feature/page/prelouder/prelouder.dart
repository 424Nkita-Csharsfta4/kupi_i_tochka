import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/cubit/prelouder_cubit.dart';

class SignInSignUp extends StatelessWidget {
  const SignInSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoaderCubit(),
      child: BlocBuilder<LoaderCubit, LoaderState>(
        builder: (context, state) {
          // В зависимости от состояния прелоадера отображаем соответствующий UI
          return Stack(
            children: [
              Center(
                child: state is LoaderVisible
                    ? _buildContent() // Отображаем основной контент
                    : _buildLoader(), // Отображаем прелоадер
              ),
              if (state is LoaderVisible) _buildPreloader(), // Прелоадер внизу
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoader() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 335, bottom: 107),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 114,
                  height: 114,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 114,
                        height: 114,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('@/assets/image/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 239.69),
                Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 3.33,
                    bottom: 2,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPreloader() {
    return const Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
