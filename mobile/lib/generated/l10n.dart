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

  /// `Watree`
  String get main_route_title {
    return Intl.message(
      'Watree',
      name: 'main_route_title',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get main_route_home_tab {
    return Intl.message(
      'Home',
      name: 'main_route_home_tab',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get main_route_history_tab {
    return Intl.message(
      'History',
      name: 'main_route_history_tab',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get home_screen_temperature {
    return Intl.message(
      'Temperature',
      name: 'home_screen_temperature',
      desc: '',
      args: [],
    );
  }

  /// `Air humidity`
  String get home_screen_air_humidity {
    return Intl.message(
      'Air humidity',
      name: 'home_screen_air_humidity',
      desc: '',
      args: [],
    );
  }

  /// `Soil humidity`
  String get home_screen_soil_humidity {
    return Intl.message(
      'Soil humidity',
      name: 'home_screen_soil_humidity',
      desc: '',
      args: [],
    );
  }

  /// `Currently watering`
  String get home_screen_watering {
    return Intl.message(
      'Currently watering',
      name: 'home_screen_watering',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get home_screen_watering_yes {
    return Intl.message(
      'Yes',
      name: 'home_screen_watering_yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get home_screen_watering_no {
    return Intl.message(
      'No',
      name: 'home_screen_watering_no',
      desc: '',
      args: [],
    );
  }

  /// `Schedule additional watering`
  String get home_screen_watering_schedule {
    return Intl.message(
      'Schedule additional watering',
      name: 'home_screen_watering_schedule',
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
