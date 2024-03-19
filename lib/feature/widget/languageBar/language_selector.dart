import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kupi_i_tochka/generated/l10n.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLanguage = Provider.of<AppLanguage>(context);
    final supportedLanguages = S.delegate.supportedLocales;

    return IconButton(
      onPressed: () {
        _showLanguagePickerDialog(context, appLanguage, supportedLanguages);
        // Вызываем метод AnimatedDialog при нажатии на кнопку
        AnimatedDialog(context);
      },
      icon: Stack(
        children: [
          const Icon(Icons.translate),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<Locale>(
                  value: appLanguage.locale,
                  onChanged: (Locale? newValue) {
                    if (newValue != null) {
                      appLanguage.changeLanguage(newValue);
                    }
                  },
                  items: supportedLanguages.map<DropdownMenuItem<Locale>>(
                    (Locale locale) {
                      final localeName = S.delegate.isSupported(locale)
                          ? S.of(context).localeName
                          : locale.toString();
                      return DropdownMenuItem<Locale>(
                        value: locale,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(localeName),
                            if (locale.languageCode == 'en')
                              Image.asset(
                                'assets/image/usa.png',
                                width: 24,
                                height: 24,
                              ),
                            if (locale.languageCode == 'ru')
                              Image.asset(
                                'assets/image/russian.png',
                                width: 24,
                                height: 24,
                              ),
                            if (locale.languageCode == 'ja')
                              Image.asset(
                                'assets/image/japan.png',
                                width: 24,
                                height: 24,
                              ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLanguagePickerDialog(BuildContext context, AppLanguage appLanguage,
      List<Locale> supportedLanguages) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).selectLanguage),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: supportedLanguages.length,
              itemBuilder: (BuildContext context, int index) {
                final locale = supportedLanguages[index];
                final localeName = S.of(context).localeName;
                return ListTile(
                  title: Text(localeName),
                  onTap: () {
                    appLanguage.changeLanguage(locale);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  void AnimatedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Animated Dialog Title'),
          content: const Text('Animated Dialog Content'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class AppLanguage extends ChangeNotifier {
  late Locale _appLocale;

  AppLanguage() {
    _appLocale = const Locale('en');
  }

  Locale get locale => _appLocale;

  void changeLanguage(Locale type) {
    _appLocale = type;
    notifyListeners();
  }
}
