import 'package:organic_bloc/data/local/shared/shared_key.dart';
import 'package:organic_bloc/data/local/shared/shared_preferences_service.dart';

class StorageManager{

  static void setBoolDarkTheme(bool value){
    PrefsService.setIsData(SharedKey.KEY_IS_DARK_THEME, value);
  }
  static Future<bool?> isDarkThemes() async {
    final isDarkThemes = await PrefsService.isData(SharedKey.KEY_IS_DARK_THEME);
    return isDarkThemes;
  }


}