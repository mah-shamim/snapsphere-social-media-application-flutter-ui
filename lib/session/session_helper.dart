

import 'dart:convert';


import '../utills/const_string.dart';
import 'session_manager.dart';

class SessionHelper {
  SessionHelper._();

  static final SessionHelper _instance = SessionHelper._();

  factory SessionHelper() {
    return _instance;
  }

  /// home seen
  Future<void> sethomeseen(bool status) async {
    // save user values in shared pref
    await SessionManager.setBoolValue('S_P_home', status);
  }

  Future<bool?> gethomeseenResponse() async {
    bool response = await SessionManager.getBoolValue('S_P_home');
    return response;
  }

  ///intro
  Future<void> setIntro(int status) async {
    // save user values in shared pref
    await SessionManager.setIntValue(spIntro, status);
  }

  Future<int?> getIntro() async {
    int response = await SessionManager.getIntValue(spIntro);
    return response;
  }


  /// token
  Future<void> setToken (String status) async {
    // save user values in shared pref
    await SessionManager.setStringValue(spBaseToken, status);
  }

  Future<String?> getToken() async {
    String response = await SessionManager.getStringValue(spBaseToken);
    return response;
  }

  /// coin
  Future<void> setCoin (String status) async {
    // save user values in shared pref
    await SessionManager.setStringValue(spBaseCoin, status);
  }

  Future<String?> getCoin() async {
    String response = await SessionManager.getStringValue(spBaseCoin);
    return response;
  }

  /// set login response in shared pref
  Future<void> setLoginResponse(dynamic response) async {
    // save user values in shared pref
    await SessionManager.setStringValue(spLoginResponse, json.encode(response.toJson()));
  }

  Future<dynamic?> getLoginResponse() async {
    String response = await SessionManager.getStringValue(spLoginResponse);
    return json.decode(response);
  }

}
