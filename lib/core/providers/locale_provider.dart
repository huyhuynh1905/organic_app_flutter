import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  get locale => _locale;

  setLocale(Locale value, BuildContext context){
    _locale = value;
    EasyLocalization.of(context)?.setLocale(value);
    notifyListeners();
  }
  clearLocale(){
    _locale = null;
    notifyListeners();
  }
}