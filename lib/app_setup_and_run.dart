import 'dart:async';
import 'package:organic_bloc/app.dart';
import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:organic_bloc/di/injection_container.dart';
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

    ///di
    await initInjection();

    ///get info of device
    await Future.wait([
      FlavorConfig.getVersionCode(),
      FlavorConfig.getPackageName(),
      FlavorConfig.getVersionName()
    ]);

    ///locale
    await getIt<LocaleProvider>().getLocale();
  }

  static _runMyApp() async {
    runApp(MyApp());
  }

  static _reportError(Object error, StackTrace stack) async {
    debugPrint('Uncaugth Error on _reportError(): $error');
  }
}