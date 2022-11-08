import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/model/category_json.dart';
import 'package:flutter_health_care_app/model/data1.dart';
import 'package:flutter_health_care_app/model/doctor_model.dart';
import 'package:flutter_health_care_app/model/data.dart';
import 'package:flutter_health_care_app/screens/service_card.dart';
import 'package:flutter_health_care_app/screens/service_card1.dart';
import 'package:flutter_health_care_app/screens/serviceprovider_screen.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*
Title:HomePageScreen
Purpose:HomePageScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/

class SonographyServiceScreen extends StatefulWidget {
  final int id;

  SonographyServiceScreen({Key key, this.id})
      : super(
          key: key,
        );

  @override
  _SonographyServiceScreen createState() => _SonographyServiceScreen();
}

class _SonographyServiceScreen extends State<SonographyServiceScreen> {
  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.call,
          color: Colors.white,
          size: 29,
        ),
        backgroundColor: Colors.blue,
        tooltip: 'Help',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Stack(children: <Widget>[
        Center(
            child: Container(
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/body.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
        )),

        Positioned(
          right: 50,
          // distance between this child's left edge & left edge of stack
          top: 150,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(
                        id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 80.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        sonography[3]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 40,
          // distance between this child's left edge & left edge of stack
          top: 230,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(
                        id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 40.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        sonography[2]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 360,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(
                        id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        sonography[1]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 150.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 40,
          // distance between this child's left edge & left edge of stack
          top: 300,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(
                        id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 80.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        sonography[4]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 390,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(
                        id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        sonography[0]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(width: 2.0),
                  SizedBox(
                    width: 150.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

      ]),
    );
  }
}
