import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/otp_screen_controller.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/components/body.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/referal_screen.dart';
import 'package:flutter_health_care_app/screens/OtpVerificationScreen/otp_verification_screen.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/button.dart';
import 'package:flutter_health_care_app/widgets/button2.dart';
import 'package:flutter_health_care_app/widgets/privacy_policy.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final regCtrl = Get.put(OtpScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GetBuilder<OtpScreenController>(builder: (_)
    {
      return Scaffold(
          body: SingleChildScrollView(
            child:
            Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: size.height * 0.05),
                  child: Lottie.asset(
                    "assets/otp.json",
                    height: size.height * 0.4,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                            offset: Offset(2.0, 5.0),
                          ),
                        ],
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10.0,
                        margin: EdgeInsets.all(12.0),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Login with mobile number\n\n\n",
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0278AE),
                                        ),
                                      ),
                                     /* TextSpan(
                                        text: "We will send you an",
                                        style: TextStyle(
                                          color: Color(0xFF373A40),
                                        ),
                                      ),
                                      TextSpan(
                                        text: " One Time Password (OTP) ",
                                        style: TextStyle(
                                          color: Color(0xFF373A40),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: "on this mobile number"),*/
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: size.height * 0.01),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: TextFormField(
                                    controller: regCtrl.mobiletxtController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD4D4D4),
                                          width: 1.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD4D4D4),
                                          width: 1.0,
                                        ),
                                      ),
                                      hintText: "Enter Your Mobile Number.",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      regCtrl.loading == true
                          ? const ProgressBarWidget()
                          : Expanded(
                          child:
                      Button2(
                      size: size,
                      text: "Next",
                      press: () {

                      //  Get.to(ReferalScreen());

                         if(regCtrl.mobiletxtController.text !=null && regCtrl.mobiletxtController.text.length == 10) {

                          if(regCtrl.checkBox) {
                            regCtrl.getOtp();
                          }
                          else{
                            showSnackbar('please accept TnC');

                          }
                        }
                        else{
                          showSnackbar('please enter 10 digit mobile number');
                        }
                      },
                    )),
                      ]),
                  ],
                )
              ],
            ),
          ));
    });
  }
}
