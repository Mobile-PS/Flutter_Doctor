import 'dart:convert';




import 'package:flutter_health_care_app/model/login_response_model.dart';
import 'package:flutter_health_care_app/preferences/const.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PrefRepository {
  Future<SharedPreferences> _getPref() => SharedPreferences.getInstance();
  final _const = PrefConst();

  clearPreferences() async {
    (await _getPref()).clear();
  }


  saveLoginData(LoginResponseModel value) async {
    (await _getPref())
        .setString(_const.prefRegisterUser, json.encode(value));
  }

  Future<LoginResponseModel> getLoginUserData() async {
    final data = (await _getPref()).getString(_const.prefRegisterUser);
    if (data != null && data.isNotEmpty) {
      return LoginResponseModel.fromJson(json.decode(data));
    } else {
      return null;
    }
  }

  saveMobile(String value) async {
    (await _getPref())
        .setString(_const.prefMobile, value);
  }

  Future<String> getMobilerData() async {
    final data = (await _getPref()).getString(_const.prefMobile);
    if (data != null && data.isNotEmpty) {
      return data;
    } else {
      return null;
    }
  }

}
