import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/controllers/referal_screen_controller.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/components/body.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/components/referal_body.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/button1.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ReferalScreen extends StatefulWidget {
  @override
  State<ReferalScreen> createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {

  final regCtrl = Get.put(ReferralScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                              text: "Enter Referral Code\n\n\n",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0278AE),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.045),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: regCtrl.mobiletxtController,
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
                            hintText: "Enter referral code.",
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
        Button1(
        size: size,
        text: "Next",
        press: () {

         /* if(regCtrl.mobiletxtController.text !=null && regCtrl.mobiletxtController.text.isNotEmpty){

            regCtrl.getReferal();
          }
          else{

            showSnackbar('please enter Referral code ');

          }*/

          Get.offAll(HomePageScreen());


        },
        skip: (){

          Get.offAll(HomePageScreen());

        },
      ),),
          ])


        ],
      )
      ],
    ),
      ));
  }
}
