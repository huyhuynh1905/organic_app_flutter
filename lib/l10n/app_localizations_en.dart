// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get langX => 'EN';

  @override
  String get langIcon => 'assets/images/flag_en.png';

  @override
  String get textBtnLogin => 'Login';

  @override
  String get textForgotPass => 'Forgot password?';

  @override
  String get hintEdtPass => 'Password';

  @override
  String get textRegister => 'Creat new account';

  @override
  String get hintEdtName => 'Name';

  @override
  String get hintEdtAddr => 'Address';

  @override
  String get hintEdtRePass => 'Retype password';

  @override
  String get tvHaveAccount => 'Already have an account? ';
}
