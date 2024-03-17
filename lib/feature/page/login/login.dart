import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Телефон',
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kTabs = <Tab>[
      const Tab(text: 'Вход'),
      const Tab(text: 'Регистрация'),
    ];
    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: kTabs,
            indicatorColor: ColorCollection.pink_A700,
            labelColor: ColorCollection.pink_A700,
          ),
        ),
      ),
    );
  }
}
