import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/OtpVerificationScreen/otp_verification_screen.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/widgets/button.dart';
import 'package:flutter_health_care_app/widgets/button1.dart';
import 'package:lottie/lottie.dart';


class ReferalScreenBody extends StatelessWidget {
  const ReferalScreenBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            keyboardType: TextInputType.number,
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
            Button1(
              size: size,
              text: "Next",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()),
                );
              },
              skip: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
