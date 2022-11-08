import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/controllers/otp_screen_controller.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:flutter_health_care_app/widgets/privacy_policy.dart';
import 'package:get/get.dart';

class Button2 extends StatefulWidget {
  const Button2({
    Key key,
    @required this.size,
    this.text,
    this.press,
    this.skip
  }) : super(key: key);

  final Size size;
  final String text;
  final GestureTapCallback press;
  final GestureTapCallback skip;

  @override
  State<Button2> createState() => _Button1State();
}

class _Button1State extends State<Button2> {
  final regCtrl = Get.put(OtpScreenController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: widget.size.height * 0.40),
        child: Column(children: [
        SizedBox(
          width: widget.size.width * 0.5,
          height: 50.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)), primary: Color(0xFF4A90E2), elevation: 5),

            onPressed: widget.press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                Card(
                  color: Color(0xCDA3C5EC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  child: SizedBox(
                    width: 35.0,
                    height: 35.0,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

          SizedBox(height: 5,),
          Padding(padding: EdgeInsets.only(left: 50.0),
              child:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  side: BorderSide(
                    color: kPrimaryBlue,
                    width: 1.5,
                  ),
                  checkColor: Colors.white,
                  value: regCtrl.checkBox,
                  activeColor: kPrimaryBlue,
                  onChanged: (value) {
                    regCtrl.toogleCheckbox();
                  },
                ),
                Expanded(child: PrivacyPolicy()),
              ]))
        ],)
      ),
    );
  }
}
