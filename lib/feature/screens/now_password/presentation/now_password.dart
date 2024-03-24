import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/app_bar/app_bar.dart';
import 'package:kupi_i_tochka/feature/screens/now_password/data/password_form.dart';

import 'package:kupi_i_tochka/generated/l10n.dart';

class NowPasswordPage extends StatelessWidget {
  const NowPasswordPage({Key? key}) : super(key: key);

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
              const AppBars(),
              _buildTitleRow(context),
              Expanded(
                child: _buildContent(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleRow(BuildContext context) {
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

  Widget _buildContent(BuildContext context) {
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
          const PasswordForm(),
          const SizedBox(height: 20),
          TextButton(
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
        ],
      ),
    );
  }
}
