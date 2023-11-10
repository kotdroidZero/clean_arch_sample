import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  final SharedPreferences sharedPreferences;

  SharedPrefHelper(this.sharedPreferences);

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return false;
    }
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeData(String key) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> clearPrefs() async {
    var success = await sharedPreferences.clear();
    return success;
  }
}
