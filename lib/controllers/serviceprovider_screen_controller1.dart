import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/SubService_model.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class ServiceProviderController1 extends GetxController {

   DoctorServiceDataModel loginScreenResponse;


   List<DocShow> serviceList = [];
   List<DocShow> tempservList = [];

   SubService_model subService_model;

   bool loading = false;

  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }

 /*  @override
   Future<void> onInit() async {
     getData();
   }*/


   Future<DoctorServiceDataModel> getSubServiceData(int id) async {
     toggleLoading();
     final response = await Apis().getSubService(id);

     printLog(response);

     if (response != null) {
       subService_model = response;
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


  Future<DoctorServiceDataModel> getData(int id,int mainid) async {
    toggleLoading();
    final response = await Apis().getService(id,mainid);

    printLog(response);

    if (response != null) {
      loginScreenResponse = response;
      serviceList = response.show;
      tempservList = response.show;
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


   getFilterList(String txt) async {
     //tempfaqList.clear();

     tempservList = serviceList.where((element) => element.hospitalName.toLowerCase().contains(txt.toLowerCase())).toList();


     update();
   }

   void Reset(){

     tempservList = loginScreenResponse.show;
     update();
   }


}
