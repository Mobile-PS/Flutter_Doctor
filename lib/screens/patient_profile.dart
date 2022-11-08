import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/controllers/placeorder_screen_controller.dart';
import 'package:flutter_health_care_app/screens/date_time.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class PatientData extends StatefulWidget {
  final int id;

  const PatientData({Key key, this.id}) : super(key: key);

  @override
  _PatientData createState() => _PatientData();
}

class _PatientData extends State<PatientData> {
  bool male = false;
  bool female = true;
  bool other = false;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final profileController = Get.put(DocDetailsController());

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(
            'Patient Details',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ), //IconButton
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {

            await launch ("tel:+917080909046");

          },
          child: Icon(Icons.call, color: Colors.white, size: 29,),
          backgroundColor: Colors.blue,
          elevation: 5,
          splashColor: Colors.grey,
        ),
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Form(
    key: _formkey,
          autovalidateMode: AutovalidateMode.always,
    child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SizedBox(
            height: 30,
          ),

          Container(
            height: 70,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              controller: profileController.nametxtController,
              validator: (value) {
                if (value.isEmpty) {
                  return errorField;
                }
                return null;
              },
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                //add prefix icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(196, 196, 196, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: customerrorBorder,
                fillColor: Colors.grey,
                hintText: "Patient Name",

                //make hint text
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: 'Patient Name',
                //lable style
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Container(
            height: 70,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              controller: profileController.phonetxtController,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.isEmpty) {
                  return errorField;
                }
                else{
                  if(value.length != 10){
                    return 'please enter 10 digit mobile number';
                  }
                }
                return null;
              },
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                //add prefix icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(196, 196, 196, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: customerrorBorder,
                fillColor: Colors.grey,

                hintText: "Mobile Number",

                //make hint text
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: 'Mobile Number',
                //lable style
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Container(
            height: 70,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              controller: profileController.agetxtController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.isEmpty) {
                  return errorField;
                }
                return null;
              },
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              onChanged: (value) {
                //setState(() {});
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                //add prefix icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(196, 196, 196, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: customerrorBorder,
                fillColor: Colors.grey,

                hintText: "Age",

                //make hint text
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: 'Age',
                //lable style
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GenderPickerWithImage(
            showOtherGender: true,
            verticalAlignedText: false,
            selectedGender: Gender.Male,
            selectedGenderTextStyle: TextStyle(
                color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
            unSelectedGenderTextStyle: TextStyle(
                color: Colors.white, fontWeight: FontWeight.normal),
            onChanged: (Gender gender) {
              if(gender.toString() == 'Gender.Female'){
                print(gender);

                profileController.updateGender('female');
              }
              if(gender.toString() == 'Gender.Male'){
                print(gender);

                profileController.updateGender('male');
              }
              if(gender.toString() == 'Gender.Others'){
                print(gender);

                profileController.updateGender('other');
              }
            },
            equallyAligned: true,
            animationDuration: Duration(milliseconds: 300),
            isCircular: true,
            // default : true,
            opacityOfGradient: 0.4,
            padding: const EdgeInsets.all(3),
            size: 50, //default : 40
          ),




          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {

              if (_formkey.currentState.validate()) {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DateAndTime(),
                  ),
                );
              }

              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DateAndTime(),
                ),
              );*/
             // Get.to(HomeScreen());
            },
            child: Text(
              "Next",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),

            style: ElevatedButton.styleFrom(
                shape:  StadiumBorder(), primary:  LightColor.purple, elevation: 5),

          )
        ],
      )),
    )));
  }
}
