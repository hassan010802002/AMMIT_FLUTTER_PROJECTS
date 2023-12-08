import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? preferences;

  static void init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static dynamic getData({required String key}) {
    return preferences!.get(key);
  }

  static Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is String) return await preferences!.setString(key, value);
    if (value is int) return await preferences!.setInt(key, value);
    if (value is bool) return await preferences!.setBool(key, value);
    return await preferences!.setDouble(key, value);
  }

  static Future<bool> clearData() async {
    return await preferences!.clear();
  }

  static Future<bool> removeData({required key}) async {
    return await preferences!.remove(key);
  }
  static SharedPreferences returningPreference() {
    return preferences!;
  }
}
