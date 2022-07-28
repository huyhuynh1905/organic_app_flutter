import 'dart:async';

import 'package:organic_bloc/app.dart';
import 'package:organic_bloc/di/injection_container.dart';
import 'package:organic_bloc/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/build_flavor_config.dart';

class AppSetup {
  static run() async {
    await _setup();
    runZonedGuarded(_runMyApp, _reportError);
  }

  static _setup() async {
    ///init importance
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

    ///di
    await initInjection();

    ///get info of device
    await Future.wait([
      FlavorConfig.getVersionCode(),
      FlavorConfig.getPackageName(),
      FlavorConfig.getVersionName()
    ]);
  }

  static _runMyApp() async {
    runApp(EasyLocalization(
        supportedLocales: const [
          Locale('vi'),
          Locale('en')
        ],
        path: 'assets/translations', //file này define mặc định để dùng đến easy_localition
        fallbackLocale: const Locale('vi'),
        child: MyApp()),
    );
  }

  static _reportError(Object error, StackTrace stack) async {
    debugPrint('Uncaugth Error on _reportError(): $error');
  }
}