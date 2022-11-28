import 'package:organic_bloc/data/local/shared/shared_key.dart';
import 'package:organic_bloc/di/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static final _prefs = getIt<SharedPreferences>();

  static saveString(String key, String value) async {
    await _prefs.setString(key, value);
  }
  static Future<String> getString(String key) async {
    return _prefs.getString(key) ?? '';
  }

  static setIsData(String key, bool value) async {
    await _prefs.setBool(key, value);
  }
  static Future<bool?> isData(String key) async {
    return _prefs.getBool(key);
  }
  //clear data
  static clearAllData(){
    return _prefs.clear();
  }
  static clearDataForLogout(){
    _prefs.remove(SharedKey.KEY_ACCESS_TOKEN);
  }

  static clearDataByKey(String key){
    _prefs.remove(key);
  }
}