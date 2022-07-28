
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

initInjection() async {
  //local
  final sharedPref = await SharedPreferences.getInstance();
  getIt.registerFactory(() => sharedPref);

}