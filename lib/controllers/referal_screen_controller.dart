import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/NotificationDataModel.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/screens/OtpVerificationScreen/otp_verification_screen.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class ReferralScreenController extends GetxController {


  TextEditingController mobiletxtController = TextEditingController();

   bool loading = false;

  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }



  Future<dynamic> getReferal() async {
    toggleLoading();
    final response = await Apis().getReferal(mobiletxtController.text);

    printLog(response);

    if (response != null) {

      if(response.rshow.isNotEmpty){
        Get.offAll(HomePageScreen());
      }
      else{
        showSnackbar('Invalid Code');

      }
    //  pref.clearPreferences();
     // pref.saveUserData(loginScreenResponse!.data);

      //showSnackbar('S');
     // Get.to(VerifyOtpScreen());

    }
    else{
      if (response != null)
      showSnackbar('Fail');

    }

    toggleLoading();
    update();
  }



}
