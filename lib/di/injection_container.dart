
import 'package:get_it/get_it.dart';
import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

initInjection() async {
  //local
  final sharedPref = await SharedPreferences.getInstance();
  getIt.registerFactory(() => sharedPref);

  //Providers
  getIt.registerFactory(() => LocaleProvider());
}