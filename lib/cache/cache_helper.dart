import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheInitialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setData(
      {required String key, required bool value}) async {
    await sharedPreferences.setBool(key, value);
  }

  static bool? getData({required String key}) {
    return sharedPreferences.getBool(key);
  }
}
