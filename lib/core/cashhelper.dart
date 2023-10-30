import 'dart:convert';

import 'package:findjop/auth/presention/controller/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late SharedPreferences preferences;
  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static String userModelKey = 'userModel';

  static Future saveLoginData(LoginModel loginModel) async {
    await preferences.setString(
        'userModel',
        jsonEncode(
          loginModel.toJson(),
        ));
  }

  static Future saveUserData(UserData userData) async {
    await preferences.setString(
        'userModel',
        jsonEncode(
          userData.toJson(),
        ));
  }

  static String getToken() {
    return preferences.getString("token") ?? "";
  }

  static String getName() {
    return preferences.getString("name") ?? "";
  }

  static String getEmail() {
    return preferences.getString("email") ?? "";
  }
}
