import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/feature/widget/languageBar/language_selector.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class WriteCode extends StatefulWidget {
  const WriteCode({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WriteCodeState createState() => _WriteCodeState();
}

class _WriteCodeState extends State<WriteCode> {
  bool isAllFieldsFilled = false;
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void initState() {
    super.initState();
    for (var controller in controllers) {
      controller.addListener(checkFields);
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void checkFields() {
    setState(() {
      isAllFieldsFilled =
          controllers.every((controller) => controller.text.isNotEmpty);
    });
  }

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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
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
            const SizedBox(
              height: 12,
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
                              S.of(context).Entercode,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 390,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              S.of(context).Enterthecodesentto,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff4f4449),
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: 80,
                            height: 50,
                            child: TextField(
                              controller: controllers[index],
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              onChanged: (value) {
                                setState(() {});
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: '',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary:
                                isAllFieldsFilled ? Colors.pink : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: const Size(350, 50),
                          ),
                          child: Text(
                            S.of(context).Acknowledge,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).go('/write_code');
                        },
                        child: Text(
                          S.of(context).Resendcode,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xffde3a75),
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.normal),
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
