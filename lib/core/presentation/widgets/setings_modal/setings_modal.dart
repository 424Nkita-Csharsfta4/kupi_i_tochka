import 'package:flutter/material.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/entity/app_locale.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_event.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_service.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';
import 'package:kupi_i_tochka/theme/color_collection.dart';

class SettingsModalBottomSheet extends StatefulWidget {
  final SettingsService settingsService;

  const SettingsModalBottomSheet({Key? key, required this.settingsService})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsModalBottomSheetState createState() =>
      _SettingsModalBottomSheetState();
}

class _SettingsModalBottomSheetState extends State<SettingsModalBottomSheet> {
  late bool _isDarkThemeActive;

  @override
  void initState() {
    super.initState();
    _isDarkThemeActive = false;
  }

  BoxDecoration get _modalDecoration => const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: ColorCollection.white_A700,
      );

  Widget get _languageDropDownBuilder => DropdownButton<AppLocale>(
        value: widget.settingsService.currentLocale,
        onChanged: (newLocale) {
          if (newLocale == null) return;

          final localeIndex =
              widget.settingsService.supportedLocaleList.indexOf(newLocale);

          widget.settingsService.add(ChangeLocaleEvent(localeIndex));
        },
        items: widget.settingsService.supportedLocaleList.map((locale) {
          return DropdownMenuItem(
            value: locale,
            child: Text(locale.name),
          );
        }).toList(),
      );

  Widget _themeSwitcherBuilder(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.of(context).DarkTheme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Switch(
            value: _isDarkThemeActive,
            onChanged: (value) {
              setState(() {
                _isDarkThemeActive = value;
              });
            },
          ),
        ],
      );

  void _showSettingsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: _modalDecoration,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _modalHeaderBuilder(context),
              const SizedBox(height: 16),
              _languageDropDownBuilder,
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 24),
              _themeSwitcherBuilder(context),
              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showSettingsBottomSheet(context);
      },
      child: Text(S.of(context).Settings),
    );
  }

  Widget _modalHeaderBuilder(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.of(context).Settings,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              S.of(context).Done,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: ColorCollection.primary,
                  ),
            ),
          ),
        ],
      );
}
