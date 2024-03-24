import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/bottom_bar/bottom_bar.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/card_info/card_info.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/card_info/data/item.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/custom_floating_button/custom_floating_button.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/search_bar/search_bar.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_service.dart';

class MainScreen extends StatelessWidget {
  final List<Item> items;

  const MainScreen({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBars(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Colors.pink,
                      labelColor: Colors.pink,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Все'),
                        Tab(text: 'Мои'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: items.map((item) {
                          return ItemCard(item: item);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
      floatingActionButton:
          CustomFloatingActionButton(settingsService: SettingsService()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
