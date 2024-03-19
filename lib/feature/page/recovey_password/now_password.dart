import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/widget/languageBar/language_selector.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class NowPassword extends StatefulWidget {
  const NowPassword({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NowPasswordState createState() => _NowPasswordState();
}

class _NowPasswordState extends State<NowPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isPasswordEntered = false;
  bool isConfirmPasswordEntered = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 390,
          height: 844,
          color: const Color(0xfffff8f9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            GoRouter.of(context).go('/login');
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        Text(
                          S.of(context).Passwordrecovery,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Color(0xff211a1d),
                            fontFamily: 'Roboto-Medium',
                          ),
                        ),
                      ],
                    ),
                    const LanguageSelector(),
                  ],
                ),
              ),
              _buildTitleRow(),
              Expanded(
                child: _buildContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleRow() {
    return Container(
      width: 390,
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xfffff8f9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Row(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      S.of(context).Newpassword,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 22,
                        color: Color(0xff211a1d),
                        fontFamily: 'Roboto-Medium',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).Setanewpasswordandconfirmittocompletethereset,
            textAlign: TextAlign.left,
            style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              color: Color(0xff4f4449),
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff81737a), width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xff4f4449),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                isPasswordEntered = value.isNotEmpty;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: S.of(context).Password,
                              hintStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Color(0xff4f4449),
                                fontFamily: 'Roboto-Regular',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility,
                              color: Color(0xff4f4449),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff81737a), width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xff4f4449),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                isConfirmPasswordEntered = value.isNotEmpty;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: S.of(context).Confirmpassword,
                              hintStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Color(0xff4f4449),
                                fontFamily: 'Roboto-Regular',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {
                              // Toggle password visibility
                            },
                            icon: const Icon(
                              Icons.visibility,
                              color: Color(0xff4f4449),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 50,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith<Color>((states) {
                  if (isPasswordEntered && isConfirmPasswordEntered) {
                    return Colors.pink;
                  } else {
                    return Colors.grey;
                  }
                }),
              ),
              child: Text(
                S.of(context).Acknowledge,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 50,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Отправить код повторно',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffde3a75),
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
