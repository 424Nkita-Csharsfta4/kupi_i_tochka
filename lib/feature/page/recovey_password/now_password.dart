import 'package:flutter/material.dart';

class CodiaPage extends StatelessWidget {
  const CodiaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 390,
        height: 844,
        color: const Color(0xfffff8f9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopRow(),
            _buildTitleRow(),
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopRow() {
    return SizedBox(
      width: 390,
      height: 52,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '9:30',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                color: Color(0xff1f1a1c),
                fontFamily: 'Roboto-Medium',
                fontWeight: FontWeight.normal,
              ),
            ),
            Image.asset(
              'images/containerRightIcons_I54837304395075811372.png',
              width: 46,
              height: 17,
            ),
            Image.asset(
              'images/imageCameraCutout_I54837304395075811371.png',
              width: 24,
              height: 24,
            ),
          ],
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/containerLeadingIcon_I5483730440507179081.png',
                  width: 48,
                  height: 48,
                ),
              ],
            ),
            const SizedBox(width: 4),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Новый пароль',
                      textAlign: TextAlign.left,
                      style: TextStyle(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/containerTrailingIcon_I5483730440507179083.png',
                  height: 48,
                ),
              ],
            ),
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
          const Text(
            'Задайте новый пароль и подтвердите его для завершения сброса.',
            textAlign: TextAlign.left,
            style: TextStyle(
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
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'images/leadingIcon_I54837304435279825356.png',
                            width: 48,
                            height: 48,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Пароль',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 16,
                              color: Color(0xff4f4449),
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'images/trailingIcon_I54837304435279825360.png',
                            width: 48,
                            height: 48,
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
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0x1e1d1b20),
                    ),
                    child: const Center(
                      child: Text(
                        'Подтвердить',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff211a1d),
                          fontFamily: 'Roboto-Medium',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
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
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0x1e1d1b20),
                    ),
                    child: const Center(
                      child: Text(
                        'Отправить код повторно',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xffde3a75),
                          fontFamily: 'Roboto-Medium',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
