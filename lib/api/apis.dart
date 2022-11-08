import 'dart:convert';


import 'package:flutter_health_care_app/api/utils.dart';
import 'package:flutter_health_care_app/model/CartDataModel.dart';
import 'package:flutter_health_care_app/model/CategoryDataModel.dart';
import 'package:flutter_health_care_app/model/DoctorDataModel.dart';
import 'package:flutter_health_care_app/model/NotificationDataModel.dart';
import 'package:flutter_health_care_app/model/OfferDataModel.dart';
import 'package:flutter_health_care_app/model/OrderResponseModel.dart';
import 'package:flutter_health_care_app/model/ReferalModel.dart';
import 'package:flutter_health_care_app/model/SubService_model.dart';
import 'package:flutter_health_care_app/model/appointment_booking_model.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/model/login_response_model.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/utilities/common.dart';

import 'package:http/http.dart' as http;




import 'constants.dart';

class Apis {
  final constant = ApiConstants();
  final utils = ApiUtils();




  Future<SearchDataModel> Search(String keyword) async {


    Map<String, String> params = {
      constant.paramKeyword: keyword,
    };



    final request = utils.createPostRequestWithParams(
        constant.searchUrl(),params);


   // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return SearchDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }



  Future<DoctorServiceDataModel> getService(int id,int mainid) async {


    Map<String, String> params = {
      constant.paramSpecid: '$id',
      'subServicesId': '$mainid'
    };



    final request = utils.createPostRequestWithParams(
        constant.getDocServiceUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return DoctorServiceDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<DoctorServiceDataModel> getService1(int id) async {


    Map<String, String> params = {
      constant.paramSpecid: '$id',
    };



    final request = utils.createPostRequestWithParams(
        constant.getDocServiceUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return DoctorServiceDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }



  Future<SubService_model> getSubService(int id) async {


    Map<String, String> params = {
      constant.paramSpecid: '$id',
    };



    final request = utils.createPostRequestWithParams(
        constant.getSubServiceUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return SubService_model.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<OrderResponseModel> getOrder(String number) async {


    Map<String, String> params = {
      'phone': number,
    };



    final request = utils.createPostRequestWithParams(
        constant.OrderUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return OrderResponseModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }

  Future<LoginResponseModel> getOtp(String mobile) async {


    Map<String, String> params = {
      constant.paramMobileNum: mobile,
    };



    final request = utils.createPostRequestWithParams(
        constant.getOtpUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        return LoginResponseModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
      }
    } catch (e) {
      printLog(e);
    }
  }

  Future<ReferalModel> verifyOtp(String mobile,String otp) async {


    Map<String, String> params = {
      constant.paramMobileNum: mobile,
      'otp':otp,
    };



    final request = utils.createPostRequestWithParams(
        constant.verifyOtpUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        return ReferalModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
      }
    } catch (e) {
      printLog(e);
    }
  }



  Future<ReferalModel> getReferal(String code) async {


    Map<String, String> params = {
      'referralCode': code,
    };



    final request = utils.createPostRequestWithParams(
        constant.getReferalUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        return ReferalModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
      }
    } catch (e) {
      printLog(e);
    }
  }




  Future<NotificationDataModel> getNotification() async {





    final request = utils.createPostRequest(
        constant.getNotificationUrl());


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return NotificationDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }




  Future<OfferDataModel> getOffer() async {





    final request = utils.createPostRequest(
        constant.getOfferUrl());


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return OfferDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<DoctorDataModel> getDocData(int id) async {


    Map<String, String> params = {
      constant.paramDocId: '$id',
    };



    final request = utils.createPostRequestWithParams(
        constant.getDocDetailsUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return DoctorDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }

  Future<CartDataModel> getCartData(var id) async {


    Map<String, String> params = {
      "patientCode": id,
    };



    final request = utils.createPostRequestWithParams(
        constant.getCartUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return CartDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<AppointmentBookingModel> postData(String name,String mobile,String age,String gen,String email,String date,String time,int id,String paymentMode,String amount,String trancid,String serName,String serID,String serialCode,int servID,int subserID) async {


    Map<String, String> params = {
      constant.paramPName: name,
      'number': mobile,
      constant.paramPage: age,
      constant.paramPgen: gen,
      constant.paramPemail: email,
      constant.paramPdate: date,
      constant.paramPtime: time,
      'paymentMethod':paymentMode,
      'amountFees':amount,
      'patientSerialCode':trancid,
      'paymentFor':serName,
      'hospitalId':serID,
      'patientSerialCode':serialCode,
      'loginNumber':mobile,
      'serviceId':'$servID',
      'subServiceId':'$subserID',
      'cartId':'1'

    };



    final request = utils.createPostRequestWithParams(
        constant.getBookAppointmentUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();
    print(response);

    print(response.statusCode);
    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return AppointmentBookingModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<AppointmentBookingModel> addtoCartData(String fees,String patinetCode,String hospid,int servID,int subserID) async {


    Map<String, String> params = {
      'hospitalId':hospid,
      'patientId':patinetCode,
      'fees':fees,
      'serviceId':'$servID',
      'subServiceId':'$subserID'


    };



    final request = utils.createPostRequestWithParams(
        constant.addCartUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();
    print(response);

    print(response.statusCode);
    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return AppointmentBookingModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<AppointmentBookingModel> deleteCartData(String patinetCode,String hospid,String servID,String subserID) async {


    Map<String, String> params = {
      'hospitalId':hospid,
      'patientId':patinetCode,
      'serviceId':'$servID',
      'subServiceId':'$subserID'

    };



    final request = utils.createPostRequestWithParams(
        constant.deleteCartUrl(),params);


    // request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();
    print(response);

    print(response.statusCode);
    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return AppointmentBookingModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<CategoryDataModel> getCategory() async {



    final request = utils.createPostRequest(
        constant.getCategoryUrl());



    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return CategoryDataModel.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }



 /* Future<AddServiceResponse> AddService(Map<String,String> params) async {



    final request = utils.createPostRequestWithParams(
        constant.addServiceUrl(),params);


    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return AddServiceResponse.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<AddServiceResponse> UpdateService(Map<String,String> params) async {



    final request = utils.createPostRequestWithParams(
        constant.updateServiceUrl(),params);


    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return AddServiceResponse.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<ViewServiceResponse> ViewService() async {



    final request = utils.createPostRequest(
        constant.viewServiceUrl());


    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return ViewServiceResponse.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }


  Future<DeleteServiceResponse> DeleteService(int id) async {

    Map<String, String> params = {
      constant.paramId: '$id',
    };

    final request = utils.createPostRequestWithParams(
        constant.deleteServiceUrl(),params);


    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return DeleteServiceResponse.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }*/


}
