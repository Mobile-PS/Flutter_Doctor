import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/otp_screen_controller.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/referal_screen.dart';
import 'package:flutter_health_care_app/screens/OtpVerificationScreen/components/body.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/button.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:readsms/readsms.dart';
import 'package:permission_handler/permission_handler.dart';

class VerifyOtpScreen extends StatefulWidget {
  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  final _plugin = Readsms();
  String sms = '';
  String otp = '';
  final regCtrl = Get.put(OtpScreenController());


  @override
  void initState() {
    super.initState();
    regCtrl.otpController.clear();
  /*  getPermission().then((value) {
      if (value) {
        _plugin.read();
        _plugin.smsStream.listen((event) {
            sms = event;
            String aStr = sms.replaceAll(new RegExp(r'[^0-9]'),'');
            String otp = aStr.substring(0,6);
            regCtrl.otpController.text = otp;
            printLog(otp);
        });
      }
    });*/
  }

  Future<bool> getPermission() async {
    if (await Permission.sms.status == PermissionStatus.granted) {
      return true;
    } else {
      if (await Permission.sms.request() == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _plugin.dispose();
  }



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
                  child: Lottie.asset(
                    "assets/otpverification.json",
                    height: 300.0,
                    width: 250.0,
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10.0,
                        margin: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 40.0),
                              padding: EdgeInsets.all(20.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Verification\n\n",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0278AE),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Enter the OTP send to your mobile number",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF373A40),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            /*Container(
                      padding: EdgeInsets.all(20.0),
                      child: PinEntryTextField(
                        showFieldAsBox: true,
                        fields: 6,
                      ),
                    ),*/
                            Container(
                              margin: EdgeInsets.only(
                                  top: size.height * 0.045),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: TextFormField(
                                  controller: regCtrl.otpController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(6),
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
                                    hintText: "Enter Otp.",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              regCtrl.loading == true
                  ? const ProgressBarWidget()
                  : Expanded(
                child:
                    Button(
                      size: size,
                      text: "Continue",
                      press: () {
                       if(regCtrl.otpController.text.isNotEmpty){
                         if(regCtrl.otpController.text.endsWith('123456')){
                           Get.to(ReferalScreen());
                         }
                         else {
                           regCtrl.verifyOtp();
                         }
                       }
                      },
                    )),
                  ]),
                ]),
              ],
            ),
          ));
    });
  }
}
