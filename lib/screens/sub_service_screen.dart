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

class SubServiceScreen extends StatefulWidget {
  final int id;

  SubServiceScreen({Key key, this.id})
      : super(
          key: key,
        );

  @override
  _SubServiceScreen createState() => _SubServiceScreen();
}

class _SubServiceScreen extends State<SubServiceScreen> {
  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();

  bool show = true;
  bool show1 = false;

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
      body:SafeArea(child:
      SingleChildScrollView(
       child:

      Column(children: [

        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(onTap: () {

              setState(() {
                show = true;
                show1 = false;
              });
            },child:
          Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent)),
              child: Text(
                'Upper Body',
                style: TextStyle(color: Colors.black),
              ))),
            SizedBox(width: 20,),

            GestureDetector(onTap: () {

              setState(() {
                show = false;
                show1 = true;
              });
            },child:
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent)),
              child: Text(
                'Lower body',
                style: TextStyle(color: Colors.black),
              )))
        ],),

        Visibility(
          visible: show,
            child:
      Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          margin: EdgeInsets.only(
              top: 70, left: MediaQuery.of(context).size.width / 4),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/upper.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Positioned(
          left: 20,
          // distance between this child's left edge & left edge of stack
          top: 130,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                        'ct paranasa sinus',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(width: 5.0),

                  SizedBox(
                    width: 50.0,
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
          right: 20,
          // distance between this child's left edge & left edge of stack
          top: 100,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                        doctorMapList1[11]['subService'],
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
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                        doctorMapList1[10]['subService'],
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
          top: 200,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[9]['subService'],style: TextStyle(color: Colors.black),)),
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
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[8]['subService'],style: TextStyle(color: Colors.black),)),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 20,
          // distance between this child's left edge & left edge of stack
          top: 280,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[7]['subService'],style: TextStyle(color: Colors.black),)),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),
        Positioned(
          right: 30,
          // distance between this child's left edge & left edge of stack
          top: 320,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[6]['subService'],style: TextStyle(color: Colors.black),)),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          right: 5,
          // distance between this child's left edge & left edge of stack
          top: 360,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
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
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text('3DCT elbow joint',style: TextStyle(color: Colors.black),)),
                ],
                /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
              )),
        ),

        Positioned(
          left: 20,
          // distance between this child's left edge & left edge of stack
          top: 240,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[3]['subService'],style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 2.0),
                  SizedBox(
                    width: 50.0,
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
          left: 20,
          // distance between this child's left edge & left edge of stack
          top: 270,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[5]['subService'],style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 100.0,
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
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 320,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[4]['subService'],style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 70.0,
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
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 410,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[2]['subService'],style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 2.0),
                  SizedBox(
                    width: 100.0,
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
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 350,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[15]['subService'],style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 2.0),
                  SizedBox(
                    width: 120.0,
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
          left: 10,
          // distance between this child's left edge & left edge of stack
          top: 380,
          // distance between this child's top edge & top edge of stack
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceproviderScreen(id: widget.id),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent)
                      ),

                      child:
                      Text(doctorMapList1[16]['subService'],style: TextStyle(color: Colors.black),)),
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


      ])),

        Visibility(
            visible: show1,
            child:
            Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                margin: EdgeInsets.only(
                    top: 70, left: MediaQuery.of(context).size.width / 4),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/lower.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Positioned(
                left: 10,
                // distance between this child's left edge & left edge of stack
                top: 250,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceproviderScreen(id: widget.id),
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
                              doctorMapList1[12]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width: 2.0),
                        SizedBox(
                          width: 100.0,
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
                left: 10,
                // distance between this child's left edge & left edge of stack
                top: 390,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceproviderScreen(id: widget.id),
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
                              doctorMapList1[13]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width: 2.0),
                        SizedBox(
                          width: 100.0,
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
                left: 10,
                // distance between this child's left edge & left edge of stack
                top: 420,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceproviderScreen(id: widget.id),
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
                              doctorMapList1[14]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width: 2.0),
                        SizedBox(
                          width: 100.0,
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
                left: 10,
                // distance between this child's left edge & left edge of stack
                top: 520,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceproviderScreen(id: widget.id),
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
                              doctorMapList1[1]['subService'],
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
                top: 500,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceproviderScreen(id: widget.id),
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
                              doctorMapList1[0]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                      /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
                    )),
              ),
            ]))

      ],))),
    );
  }
}
