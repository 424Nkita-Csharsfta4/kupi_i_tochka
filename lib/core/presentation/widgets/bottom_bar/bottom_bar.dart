import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF37072A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTabItem(
            index: 0,
            icon: Icons.announcement,
            text: 'Объявления',
          ),
          _buildTabItem(
            index: 1,
            icon: Icons.favorite,
            text: 'Избранное',
          ),
          _buildTabItem(
            index: 2,
            icon: Icons.person,
            text: 'Профиль',
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required int index,
    required IconData icon,
    required String text,
  }) {
    final isSelected = index == _selectedIndex;
    final color = isSelected ? Colors.white : const Color(0xFFF9EAEF);

    return Expanded(
      child: SizedBox(
        height: 56,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              _handleTabSelected(index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleTabSelected(int index) {}
}
