import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).Phone,
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kTabs = <Tab>[
      Tab(text: S.of(context).Entrance),
      Tab(text: S.of(context).Registration),
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
