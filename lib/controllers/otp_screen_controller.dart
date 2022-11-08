import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/NotificationDataModel.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/login_response_model.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/preferences/pref_repository.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/referal_screen.dart';
import 'package:flutter_health_care_app/screens/OtpVerificationScreen/otp_verification_screen.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class OtpScreenController extends GetxController {


  TextEditingController mobiletxtController = TextEditingController();
  TextEditingController otpController = TextEditingController();

   bool loading = false;

  bool checkBox = false;
  final _prefRepo = PrefRepository();


  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }

  void toogleCheckbox() {
    checkBox = !checkBox;
    update();
  }


  Future<dynamic> getOtp() async {
    toggleLoading();
    final response = await Apis().getOtp(mobiletxtController.text);

    printLog(response);

    if (response != null) {

      //  pref.clearPreferences();
      _prefRepo.saveLoginData(response);
      _prefRepo.saveMobile(mobiletxtController.text);

      //showSnackbar('S');
      Get.to(ReferalScreen());

    }
    else{
      if (response != null)
      showSnackbar('Fail');

    }

    toggleLoading();
    update();
  }

  Future<dynamic> verifyOtp() async {
    toggleLoading();
    final response = await Apis().verifyOtp(mobiletxtController.text,otpController.text);

    printLog(response);

    if (response != null) {

      if(response.rshow[0].status == 'Success') {

       // _prefRepo.saveLoginData("save");

        Get.to(ReferalScreen());

      }
      else{
        showSnackbar('Incorrect Otp');

      }
        //  pref.clearPreferences();
      // pref.saveUserData(loginScreenResponse!.data);

      //showSnackbar('S');

    }
    else{
      if (response != null)
        showSnackbar('Fail');

    }

    toggleLoading();
    update();
  }


}
