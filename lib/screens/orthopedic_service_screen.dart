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

class OrthopaedicScreen extends StatefulWidget {
  final int id;

  OrthopaedicScreen({Key key, this.id})
      : super(
          key: key,
        );

  @override
  _OrthopaedicScreen createState() => _OrthopaedicScreen();
}

class _OrthopaedicScreen extends State<OrthopaedicScreen> {
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
          left: 0,
         top: 50,
         child:
         Container(
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width / 2,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/body.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
        )),

        Positioned(
          right: 70,
          // distance between this child's left edge & left edge of stack
          top: 110,
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
                    width: 2.0,
                    height: 40.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 1.0),
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        Orthopedic[0]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
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
                        Orthopedic[1]['subService'],
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
          top: 170,
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
                        ' scapula / shoulder\n blade fracture',
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
                        Orthopedic[2]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 20,
          // distance between this child's left edge & left edge of stack
          top: 235,
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
                    width: 90.0,
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
                        Orthopedic[3]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 20,
          // distance between this child's left edge & left edge of stack
          top: 255,
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
                        'spine surgery',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 30,
          // distance between this child's left edge & left edge of stack
          top: 275,
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
                    width: 60.0,
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
                        Orthopedic[4]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 120,
          // distance between this child's left edge & left edge of stack
          top: 280,
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
                    width: 60.0,
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
                        'acetabulum \nfracture',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 30,
          // distance between this child's left edge & left edge of stack
          top: 305,
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
                        Orthopedic[7]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 30,
          // distance between this child's left edge & left edge of stack
          top: 325,
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
                        Orthopedic[5]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 30,
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
                    width: 20.0,
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
                        Orthopedic[6]['subService'],
                        style: TextStyle(color: Colors.black),
                      )),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 50,
          // distance between this child's left edge & left edge of stack
          top: 380,
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
                        Orthopedic[8]['subService'],
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
          top: 440,
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
                    width: 20.0,
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
                        Orthopedic[9]['subService'],
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
          top: 470,
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
                        Orthopedic[11]['subService'],
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
          top: 580,
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
                    width: 90.0,
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
                        Orthopedic[13]['subService'],
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
          top: 560,
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
                        Orthopedic[12]['subService'],
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
