import 'package:organic_bloc/data/local/shared/storage_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppThemesProvider extends ChangeNotifier {

  AppThemesProvider() {
    StorageManager.isDarkThemes().then((value) {
      debugPrint('value read from storage: $value');
      _isDarkThemes = value ?? SchedulerBinding.instance!.window.platformBrightness == Brightness.dark ? true : false;
      if(value==null) StorageManager.setBoolDarkTheme(_isDarkThemes!);
      notifyListeners();
    });
  }
  bool? _isDarkThemes;// = SchedulerBinding.instance!.window.platformBrightness == Brightness.dark ? true : false; //tạm thời lấy từ device

  get isDarkThemes => _isDarkThemes; //sau sẽ get lưu từ database

  setDarkThemes() {
    _isDarkThemes = true;
    StorageManager.setBoolDarkTheme(true);
    notifyListeners();
  }
  setLightThemes() {
    _isDarkThemes = false;
    StorageManager.setBoolDarkTheme(false);
    notifyListeners();
  }
}