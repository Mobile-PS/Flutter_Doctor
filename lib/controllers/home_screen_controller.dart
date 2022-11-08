import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/screens/mri_service_screen.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:get/get.dart';





class HomeScreenController extends GetxController {

   SearchDataModel loginScreenResponse;
   CategoryDataModel categoryDataModel;


   bool loading = false;
  TextEditingController emailtxtController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 // final pref = PrefRepository();


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
     ViewCategory();
   }

   /*void move(String test) {
    if(test.trim() == 'CT SCAN')
     Get.to(MRIServiceScreen(id: 8,));

   }*/


  Future<List<Show>> SearchData(String text) async {
   // toggleLoading();
    final response = await Apis().Search(text);

    printLog(response);

    if (response != null) {
      loginScreenResponse = response;
    //  pref.clearPreferences();
     // pref.saveUserData(loginScreenResponse!.data);
    }
    else{
      if (response != null)
      showSnackbar('Login Fail');

    }

  //  toggleLoading();
    update();
    return loginScreenResponse.show;
  }

   int getData(String text)  {
     // toggleLoading();

     final filteredDishes = categoryDataModel.show.where((element) => element.service == text).toList();
     return filteredDishes[0].id;
   }


   Future<CategoryDataModel> ViewCategory() async {
     toggleLoading();


     final response = await Apis().getCategory();

     printLog(response);

     if (response != null) {
       categoryDataModel = response;
       //  pref.clearPreferences();
       // pref.saveUserData(loginScreenResponse!.data);

       showSnackbar('Data Fetch');
     }
     else{
       if (response != null)
         showSnackbar('Fail');

     }

     toggleLoading();
     update();
     return categoryDataModel;
   }

}
