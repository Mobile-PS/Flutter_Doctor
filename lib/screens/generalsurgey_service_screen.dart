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

class GeneralSurgeyServiceScreen extends StatefulWidget {
  final int id;

  GeneralSurgeyServiceScreen({Key key, this.id})
      : super(
          key: key,
        );

  @override
  _GeneralSurgeyServiceScreen createState() => _GeneralSurgeyServiceScreen();
}

class _GeneralSurgeyServiceScreen extends State<GeneralSurgeyServiceScreen> {
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
        Positioned(
            left: 10,
            // distance between this child's left edge & left edge of stack
            top: 100,
            child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/general.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
        )),

        Positioned(
          right: 5,
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
                    width: 10.0,
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
                        GeneralSurgey[11]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: 210,
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
                        GeneralSurgey[9]['subService'],
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
          top: 240,
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
                    width: 30.0,
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
                        GeneralSurgey[10]['subService'],
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
          top: 240,
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
                    width: 30.0,
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
                        GeneralSurgey[10]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),


        Positioned(
          right: 10,
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
                    width: 100.0,
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
                        GeneralSurgey[8]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: 350,
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
                    width: 50.0,
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
                        GeneralSurgey[7]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
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
                  SizedBox(
                    width: 50.0,
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
                        GeneralSurgey[6]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: MediaQuery.of(context).size.height/1.5,
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
                    width: 50.0,
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
                        GeneralSurgey[5]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: MediaQuery.of(context).size.height/1.4,
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
                    width: 100.0,
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
                        GeneralSurgey[4]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: MediaQuery.of(context).size.height/1.3,
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
                    width: 150.0,
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
                        GeneralSurgey[3]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: MediaQuery.of(context).size.height/1.3,
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
                    width: 150.0,
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
                        GeneralSurgey[3]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),


        Positioned(
          right: 10,
          // distance between this child's left edge & left edge of stack
          top: 590,
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
                    width: 180.0,
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
                        GeneralSurgey[0]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),

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
