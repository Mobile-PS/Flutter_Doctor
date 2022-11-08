import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/OrderResponseModel.dart';
import 'package:flutter_health_care_app/preferences/pref_repository.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class OrderScreenController extends GetxController {

   OrderResponseModel loginScreenResponse;

   OrderResponseModel subService_model;

   List<Show> selectedByDataList = [];


   bool loading = false;

   final _prefRepo = PrefRepository();


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

   @override
   void onInit() {
     getOrderData();
     super.onInit();
   }


   Future<OrderResponseModel> getOrderData() async {

     var mob = await _prefRepo.getMobilerData();

     toggleLoading();
     final response = await Apis().getOrder(mob);

     printLog(response);

     if (response != null) {
       subService_model = response;
       selectedByDataList = response.show;

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
