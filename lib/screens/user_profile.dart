import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/date_time.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';


class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  bool male = false;
  bool female = true;
  bool other = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
             // Get.back();
            },
          ), //IconButton
        ),
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SizedBox(
            height: 30,
          ),

          Container(
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
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
                fillColor: Colors.grey,

                hintText: "First Name",

                //make hint text
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: 'First Name',
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
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
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
                fillColor: Colors.grey,

                hintText: "Last Name",

                //make hint text
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: 'Last Name',
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
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
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
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
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
              print(gender);
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
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DateAndTime(),
                ),
              );*/
             // Get.to(HomeScreen());
            },
            child: Text(
              "Save",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                shape:  StadiumBorder(), primary:  LightColor.purple, elevation: 5),

          )
        ],
      ),
    )));
  }
}
