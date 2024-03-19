// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  String get localeName {
    return Intl.message(
      Intl.defaultLocale ?? 'en',
      name: 'localeName',
      desc: 'Locale name',
    );
  }

  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: 'Select Language',
    );
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Entrance`
  String get Entrance {
    return Intl.message(
      'Entrance',
      name: 'Entrance',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get Registration {
    return Intl.message(
      'Registration',
      name: 'Registration',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get Phonenumber {
    return Intl.message(
      'Phone number',
      name: 'Phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get Signin {
    return Intl.message(
      'Sign in',
      name: 'Signin',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get Forgotyourpassword {
    return Intl.message(
      'Forgot your password?',
      name: 'Forgotyourpassword',
      desc: '',
      args: [],
    );
  }

  /// `Repeat the password`
  String get Repeatthepassword {
    return Intl.message(
      'Repeat the password',
      name: 'Repeatthepassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree with`
  String get Iagreewith {
    return Intl.message(
      'I agree with',
      name: 'Iagreewith',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions of use`
  String get Termsandconditionsofuse {
    return Intl.message(
      'Terms and conditions of use',
      name: 'Termsandconditionsofuse',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get Newpassword {
    return Intl.message(
      'New password',
      name: 'Newpassword',
      desc: '',
      args: [],
    );
  }

  /// `Set a new password and confirm it to complete the reset.`
  String get Setanewpasswordandconfirmittocompletethereset {
    return Intl.message(
      'Set a new password and confirm it to complete the reset.',
      name: 'Setanewpasswordandconfirmittocompletethereset',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get Confirmpassword {
    return Intl.message(
      'Confirm password',
      name: 'Confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Acknowledge`
  String get Acknowledge {
    return Intl.message(
      'Acknowledge',
      name: 'Acknowledge',
      desc: '',
      args: [],
    );
  }

  /// `Password recovery`
  String get Passwordrecovery {
    return Intl.message(
      'Password recovery',
      name: 'Passwordrecovery',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get Resendcode {
    return Intl.message(
      'Resend code',
      name: 'Resendcode',
      desc: '',
      args: [],
    );
  }

  /// `Enter code `
  String get Entercode {
    return Intl.message(
      'Enter code ',
      name: 'Entercode',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to +373 777 88 999`
  String get Enterthecodesentto {
    return Intl.message(
      'Enter the code sent to +373 777 88 999',
      name: 'Enterthecodesentto',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'jp'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
