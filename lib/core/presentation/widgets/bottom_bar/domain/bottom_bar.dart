import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/bottom_bar/data/bottom_bar_item.dart';

class BottomBarInteractor {
  List<BottomBarItem> getItems() {
    return [
      BottomBarItem(icon: Icons.announcement, text: 'Объявления'),
      BottomBarItem(icon: Icons.favorite, text: 'Избранное'),
      BottomBarItem(icon: Icons.person, text: 'Профиль'),
    ];
  }
}