// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get langX => 'VN';

  @override
  String get langIcon => 'assets/images/flag_vi.png';

  @override
  String get textBtnLogin => 'Đăng nhập';

  @override
  String get textForgotPass => 'Quên mật khẩu?';

  @override
  String get hintEdtPass => 'Mật khẩu';

  @override
  String get textRegister => 'Đăng kí tài khoản';

  @override
  String get hintEdtName => 'Tên người dùng';

  @override
  String get hintEdtAddr => 'Địa chỉ';

  @override
  String get hintEdtRePass => 'Nhập lại mật khẩu';

  @override
  String get tvHaveAccount => 'Đã có tài khoản? ';
}
