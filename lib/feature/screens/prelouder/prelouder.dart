import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/feature/bloc/prelouder/prelouder_bloc.dart';
import 'package:kupi_i_tochka/feature/screens/auth/login/presintation/login_form.dart';
import 'package:loading_animations/loading_animations.dart';

class Prelouder extends StatefulWidget {
  const Prelouder({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrelouderState createState() => _PrelouderState();
}

class _PrelouderState extends State<Prelouder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _loading = false;
      });
      Timer(const Duration(milliseconds: 500), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginForm()),
        );
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
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoader() {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: LoadingBouncingGrid.square(
          backgroundColor: Colors.transparent,
          size: 50,
          duration: const Duration(milliseconds: 750),
          inverted: true,
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
            width: 114.31,
            height: 114.31,
            alignment: Alignment.center,
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
