import '../utils/path_provider.dart';

class TokenManager {
  static Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }

  static Future<void> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.getString(tokenKey);
  }

  static Future<void> clearToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(tokenKey);
  }
}
