import 'package:flutter/material.dart';
import 'package:organic_bloc/l10n/app_localizations.dart';
import 'package:organic_bloc/data/local/export_data_local.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = AppLocalizations.supportedLocales[0];
  get locale => _locale;

  setLocale(Locale value){
    _locale = value;
    if(value == LocaleSupport.localeVN){
      StorageManager.setIsVietNamese(true);
    } else {
      StorageManager.setIsVietNamese(false);
    }
    notifyListeners();
  }

  getLocale() async {
    final isVN = await StorageManager.isVietNamese() ?? false;
    return isVN;
  }

  clearLocale(){
    _locale = null;
    PrefsService.clearDataByKey(SharedKey.KEY_LOCALE);
    notifyListeners();
  }
}

class LocaleSupport{
  static Locale get localeVN => AppLocalizations.supportedLocales[1];
  static Locale get localeEN => AppLocalizations.supportedLocales[0];
}