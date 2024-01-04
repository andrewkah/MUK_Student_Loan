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