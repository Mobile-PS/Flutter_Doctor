import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/model/CartDataModel.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/DoctorDataModel.dart';
import 'package:flutter_health_care_app/model/appointment_booking_model.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/preferences/pref_repository.dart';
import 'package:flutter_health_care_app/screens/cart_screen.dart';
import 'package:flutter_health_care_app/screens/mid_booking_confirm.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/widgets/button.dart';
import 'package:flutter_health_care_app/widgets/default_button.dart';
import 'package:get/get.dart';





class DocDetailsController extends GetxController {

  DoctorDataModel loginScreenResponse;
  CartDataModel cartDataModel;
  TextEditingController nametxtController = TextEditingController();
  TextEditingController emailtxtController = TextEditingController();
  TextEditingController phonetxtController = TextEditingController();
  TextEditingController agetxtController = TextEditingController();
  String gender,date;
   String  time ="13:30";
  int docId;
  AppointmentBookingModel appointmentBookingModel;
  String  fees;
   String paymode = 'cash';
   String transid = '0';

   bool loading = false;
  bool loading1 = false;

  final _prefRepo = PrefRepository();

  String hospiID = '0';
  String hospname = '0';
  String hospitalImage = '';
  String servName = '';
  String subServname = '';
  int servID = 0;
  int subServId = 0;

  List<DShow>  cartData = [];
  List<String>  cartDatafees = [];

  List<CartShow>  ncartData = [];


  String finalname = '';

  int fee = 0;
  String fee1 ;

  bool show = false;

  createDialogsuccess (BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async => false,
              child:
              Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10.0)), //this right here
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.0,),
                      Center(
                          child:
                          Padding(padding: EdgeInsets.only(left: 10,right: 10.0),
                              child:
                              Text(
                                'Transaction successfully',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                              ))),

                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 50,right: 50),
                          child:
                          DefaultButton(
                            press: () {
                              Get.to(BookingConfirm());
                            },
                            text: 'Continue',
                            height: 48,
                          )),
                      SizedBox(height: 20.0,),

                    ],
                  ),
                ),
              ));
        });
  }

  createDialogfail (BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async => false,
              child:
              Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10.0)), //this right here
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.0,),
                      Center(
                          child:
                          Padding(padding: EdgeInsets.only(left: 10,right: 10.0),
                              child:
                              Text(
                                'Transaction fail',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                              ))),

                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 50,right: 50),
                          child:
                          DefaultButton(
                              press: () {
                                Get.back();
                              },
                              text: 'Retry',
                              height: 48,
                              )),
                      SizedBox(height: 20.0,),

                    ],
                  ),
                ),
              ));
        });
  }



  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }

  void toggleLoading1() {
    if (loading1) {
      loading1 = false;
    } else {
      loading1 = true;
    }
    update();
  }


  void updateGender(String gender1) {
    gender = gender1;
  }

  void updateDate(String date1) {
    date = date1;
  }
  void updateTime(String time1) {
    time = time1;
    update();
  }

  void AddCartData(String fees) {

    print(fees);
    cartDatafees.add(fees);
    cartData.add(loginScreenResponse.show[0]);

    finalname = "";
    fee =0;

    cartData.forEach((element) {
      finalname = finalname+','+element.hospitalName;
    });
    cartDatafees.forEach((element) {
      fee = fee +int.parse(element) ;
      print(fee);
      fee1 = fee.toString();

    });
   // fees = fee.toString();

    update();
  }

  void RemoveCartData(var index) {
   // cartDatafees.removeAt(index);
    ncartData.removeAt(index);
   /* finalname = "";
    fee =0;

    cartData.forEach((element) {
      finalname = finalname+','+element.hospitalName;
    });
    cartDatafees.forEach((element) {
      fee = fee + int.parse(element);
      fee1 = fee.toString();
      print(fee);
    });*/
    finalname = "";
    ncartData.forEach((element) {
      finalname = finalname+','+element.subServiceName;
    });

    update();
  }

  /* @override
   Future<void> onInit() async {
     getData();
   }*/



  Future<DoctorDataModel> getData(int id) async {
    toggleLoading();
    final response = await Apis().getDocData(id);

    printLog(response);

    if (response != null) {
      loginScreenResponse = response;

      hospitalImage = loginScreenResponse.show[0].profileImage;
    //  pref.clearPreferences();
     // pref.saveUserData(loginScreenResponse!.data);

      //showSnackbar('S');

      fetchCart1();

    }
    else{
      if (response != null)
      showSnackbar('Fail');

    }

    toggleLoading();
    update();
    return loginScreenResponse;
  }

  Future<CartDataModel> fetchCart1() async {


    //toggleLoading();

    var users = await _prefRepo.getLoginUserData();

    final response = await Apis().getCartData(users.show[0].patientSerialCode);

    printLog(response);

    if (response != null) {

      cartDataModel = response;
      ncartData = response.show;

      fee1 = ncartData[ncartData.length-1].totalSumOfSubServiceFees;

      ncartData.removeAt(ncartData.length-1);

      ncartData.forEach((element) {
        finalname = finalname+','+element.subServiceName;
      });

      //  pref.clearPreferences();
      // pref.saveUserData(loginScreenResponse!.data);

      //showSnackbar('S');

    }
    else{
      if (response != null)
        showSnackbar('Fail');

    }

   // toggleLoading();
    update();
    return cartDataModel;
  }

  Future<CartDataModel> fetchCart() async {


    toggleLoading();

    var users = await _prefRepo.getLoginUserData();

    final response = await Apis().getCartData(users.show[0].patientSerialCode);

    printLog(response);

    if (response != null) {

      cartDataModel = response;
      ncartData = response.show;

      fee1 = ncartData[ncartData.length-1].totalSumOfSubServiceFees;

      ncartData.removeAt(ncartData.length-1);

      ncartData.forEach((element) {
        finalname = finalname+','+element.subServiceName;
      });

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
    return cartDataModel;
  }

  Future<AppointmentBookingModel> AddtoCartData() async {
    toggleLoading1();

    var mob = await _prefRepo.getMobilerData();

    var users = await _prefRepo.getLoginUserData();

    final response = await Apis().addtoCartData(fees,users.show[0].patientSerialCode,loginScreenResponse.show[0].hospitalId.toString(),servID,subServId);

    printLog(response);

    toggleLoading1();

    if (response != null) {
      appointmentBookingModel = response;
      //  pref.clearPreferences();
      // pref.saveUserData(loginScreenResponse!.data);

      showSnackbar('service added successfully');
      Get.to(MyCartScreen());

     // Get.back();
      //showSnackbar('S');

    }
    else{
      if (response != null)
        showSnackbar('Fail');

    }

    update();
    return appointmentBookingModel;
  }


  Future<AppointmentBookingModel> nRemoveCartData(int pos) async {
   // toggleLoading();

    var mob = await _prefRepo.getMobilerData();

    var users = await _prefRepo.getLoginUserData();

    final response = await Apis().deleteCartData(users.show[0].patientSerialCode,ncartData[pos].hospitalId.toString(),ncartData[pos].serviceId.toString(),ncartData[pos].subServiceId);

    printLog(response);

    if (response != null) {
      appointmentBookingModel = response;
      //  pref.clearPreferences();
      // pref.saveUserData(loginScreenResponse!.data);

      RemoveCartData(pos);

      showSnackbar('service remove successfully');

      Get.back();
      //showSnackbar('S');

    }
    else{
      if (response != null)
        showSnackbar('Fail');

    }

   // toggleLoading();
    update();
    return appointmentBookingModel;
  }


  Future<AppointmentBookingModel> postData() async {
    toggleLoading();

    var mob = await _prefRepo.getMobilerData();

    var users = await _prefRepo.getLoginUserData();

    final response = await Apis().postData(nametxtController.text,mob,agetxtController.text,gender,emailtxtController.text,date,time,int.parse(ncartData[0].hospitalId),paymode,fee1,transid,hospname,hospiID,users.show[0].patientSerialCode,servID,subServId);

    printLog(response);

    if (response != null) {
      appointmentBookingModel = response;
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
    return appointmentBookingModel;
  }


}
