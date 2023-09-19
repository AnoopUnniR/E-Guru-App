
import 'package:shared_preferences/shared_preferences.dart';

class SaveToken {
  static const String savedToken = "saved_token";
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(savedToken, token);
  }

  static Future<String?> retreiveToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString(savedToken);
    return token;
  }

  static Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(savedToken);
  }
}
