import 'package:shared_preferences/shared_preferences.dart';

class FingerprintPreferences {
  static SharedPreferences? _preferences;

  static const _keyIsEnabled = 'isFingerprintEnabled';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setPreference(bool value) async {
    await _preferences?.setBool(_keyIsEnabled, value);
  }
  static getPreference() => _preferences?.getBool(_keyIsEnabled) ?? false;

}

class LocationPreferences {
  static SharedPreferences? _prefs;

  static const _locationValue = 'residentialAddress';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future setLocationPreference(String value) async {
    await _prefs?.setString(_locationValue, value);
  }
  static getLocationPreference() => _prefs?.getString(_locationValue) ?? "";

  static Future resetLocationPreference() async {
    await _prefs?.setString(_locationValue, "");
  }

}