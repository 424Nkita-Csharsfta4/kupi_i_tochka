import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/setings_modal.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_service.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final SettingsService settingsService;

  const CustomFloatingActionButton({Key? key, required this.settingsService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) =>
              SettingsModalBottomSheet(settingsService: settingsService),
        );
      },
      backgroundColor: Colors.pink,
      child: const Icon(Icons.add),
    );
  }
}
