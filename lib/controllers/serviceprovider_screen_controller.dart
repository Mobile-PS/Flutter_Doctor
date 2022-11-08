import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/SubService_model.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class ServiceProviderController extends GetxController {

   DoctorServiceDataModel loginScreenResponse;

   SubService_model subService_model;
   //SubService_model tempsubService_model;

   List<SubShow> serviceList = [];
   List<SubShow> tempserviceList = [];



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
       serviceList = response.show;
       tempserviceList = response.show;
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

     tempserviceList = serviceList.where((element) => element.subService.toLowerCase().contains(txt.toLowerCase())).toList();

     update();
   }

   void Reset(){

     tempserviceList = subService_model.show;
     update();
   }

  Future<DoctorServiceDataModel> getData(int id) async {
    toggleLoading();
    final response = await Apis().getService1(id);

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
