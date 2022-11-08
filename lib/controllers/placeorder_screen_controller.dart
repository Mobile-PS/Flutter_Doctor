import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/DoctorDataModel.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class PlaceOrderController extends GetxController {

  DoctorDataModel loginScreenResponse;

  TextEditingController nametxtController = TextEditingController();
  TextEditingController emailtxtController = TextEditingController();
  TextEditingController phonetxtController = TextEditingController();
  TextEditingController agetxtController = TextEditingController();
  String gender,date,time;
  int docId;

   bool loading = false;

  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }

  /* @override
   Future<void> onInit() async {
     getData();
   }*/

  void updateDocId(int id) {
    docId = id;
  }

  void updateGender(String gender1) {
    gender = gender1;
  }

  void updateDate(String date1) {
    date = date1;
  }
  void updateTime(String time1) {
    time = time1;
  }

  Future<DoctorDataModel> getData(int id) async {
    toggleLoading();
    final response = await Apis().getDocData(id);

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
