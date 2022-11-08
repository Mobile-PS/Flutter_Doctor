import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/NotificationDataModel.dart';
import 'package:flutter_health_care_app/model/OfferDataModel.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class OfferScreenController extends GetxController {

   OfferDataModel loginScreenResponse;


   bool loading = false;

  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }

   @override
   Future<void> onInit() async {
     getData();
   }



  Future<OfferDataModel> getData() async {
    toggleLoading();
    final response = await Apis().getOffer();

    printLog(response);

    if (response != null) {
      loginScreenResponse = response;
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
    return loginScreenResponse;
  }



}
