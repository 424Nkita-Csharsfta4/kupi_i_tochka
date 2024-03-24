import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/entity/app_locale.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_event.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/setings_modal/domain/service/settings_state.dart';

class SettingsService extends Bloc<SettingsEvent, SettingsState> {
  SettingsService(super.initialState) {
    on<ChangeLocaleEvent>(_onChangeLocaleEvent);
  }

  final List<AppLocale> supportedLocaleList = [
    const AppLocale(
      name: 'Русский',
      languageCode: 'ru',
    ),
    const AppLocale(
      name: 'English',
      languageCode: 'en',
    ),
    const AppLocale(
      name: '日本語',
      languageCode: 'ja',
    ),
  ];

  AppLocale get currentLocale => supportedLocaleList[state.localeIndex];

  FutureOr<void> _onChangeLocaleEvent(
    ChangeLocaleEvent event,
    Emitter<SettingsState> emit,
  ) {
    emit(SettingsState(
      localeIndex: event.newLocaleIndex,
    ));
  }
}
