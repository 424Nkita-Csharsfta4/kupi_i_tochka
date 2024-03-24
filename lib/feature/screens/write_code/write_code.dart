import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/app_bar/app_bar.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/textfield_code/textfield_code.dart';
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
            const AppBars(),
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
                          return CustomCodeTextField(
                            controller: controllers[index],
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: CustomElevatedButton(
                          onPressed: () {},
                          text: S.of(context).Acknowledge,
                          color: isAllFieldsFilled ? Colors.pink : Colors.grey,
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
