import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/bloc/prelouder/prelouder_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/screens/login_screen.dart';

class Prelouder extends StatefulWidget {
  const Prelouder({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrelouderState createState() => _PrelouderState();
}

class _PrelouderState extends State<Prelouder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final bool _loading = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    Timer(const Duration(seconds: 5), () {
      _controller.reverse().then((_) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LoginScreen()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoaderBloc(),
      child: BlocBuilder<LoaderBloc, LoaderState>(
        builder: (context, state) {
          return Stack(
            children: [
              _buildContent(context),
              if (_loading) _buildLoader(),
              if (!_loading) _buildLoginScreen(),
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
                image: AssetImage('assets/image/logo.png'),
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

  Widget _buildLoginScreen() {
    return FadeTransition(
      opacity: _animation,
      child: const LoginScreen(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
