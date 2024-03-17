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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 390,
              height: 52,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '9:30',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1f1a1c),
                          fontFamily: 'Roboto-Medium',
                          fontWeight: FontWeight.normal),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/containerRightIcons_I54837304655075811372.png',
                          width: 46,
                          height: 17,
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/imageCameraCutout_I54837304655075811371.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 390,
              height: 64,
              color: const Color(0xfffff8f9),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/containerLeadingIcon_I5483730466507179081.png',
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
                              'Введите код ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xff211a1d),
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.normal),
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
                          'images/containerTrailingIcon_I5483730466507179083.png',
                          height: 48,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 390,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 100, 16, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Введите код, отправленный на +373 777 88 999',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff4f4449),
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Image.asset('images/containerFrame_5483730469.png'),
                      const SizedBox(height: 20),
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0x1e1d1b20),
                        ),
                        child: const Center(
                          child: Text(
                            'Подтвердить',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff211a1d),
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'Отправить код повторно',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffde3a75),
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
