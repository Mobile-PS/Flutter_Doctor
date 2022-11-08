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

class MRIServiceScreen extends StatefulWidget {
  final int id;

  MRIServiceScreen({Key key, this.id})
      : super(
          key: key,
        );

  @override
  _MRIServiceScreen createState() => _MRIServiceScreen();
}

class _MRIServiceScreen extends State<MRIServiceScreen> {
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
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        show = true;
                        show1 = false;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent)),
                        child: Text(
                          'Upper Body',
                          style: TextStyle(color: Colors.black),
                        ))),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        show = false;
                        show1 = true;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent)),
                        child: Text(
                          'Lower body',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),

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
                right: 50,
                // distance between this child's left edge & left edge of stack
                top: 80,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70.0,
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
                              MriList[13]['subService'],
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
                top: 120,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[10]['subService'],
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
                top: 100,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[8]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width: 5.0),
                        SizedBox(
                          width: 60.0,
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
                right: 10,
                // distance between this child's left edge & left edge of stack
                top: 180,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[12]['subService'],
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
                top: 180,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[12]['subService']+'\nSpino gram',
                              style: TextStyle(color: Colors.black,fontSize: 12),
                            )),
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
                right: 40,
                // distance between this child's left edge & left edge of stack
                top: 250,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[0]['subService'],
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
                top: 420,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[5]['subService'],
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
                top: 230,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[4]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
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
                top: 290,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              MriList[7]['subService'],
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width: 5.0),
                        SizedBox(
                          width: 80.0,
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
                right: 10,
                // distance between this child's left edge & left edge of stack
                top: 300,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70.0,
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
                              'MRI TL | \nthoracolumbar\n+screening',
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
                top: 370,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              'MRI elbow joint',
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
                top: 320,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              'MRI TL |\n thoracolumbar\n+spine',
                              style: TextStyle(color: Colors.black),
                            )),
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
                top: 380,
                // distance between this child's top edge & top edge of stack
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceproviderScreen(id: widget.id),
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
                              'MRI LS |\n thoracolumbar\n+spine\n+screening',
                              style: TextStyle(color: Colors.black),
                            )),
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
                    top: 300,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[6]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(width: 2.0),
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
                    top: 340,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[3]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(width: 2.0),
                            SizedBox(
                              width: 30.0,
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
                    right: 10,
                    // distance between this child's left edge & left edge of stack
                    top: 200,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[1]['subService'],
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
                    top: 70,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[14]['subService'],
                                  style: TextStyle(color: Colors.black),
                                ))  ,
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
                    left: 10,
                    // distance between this child's left edge & left edge of stack
                    top: 110,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[15]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(width: 2.0),
                            SizedBox(
                              width: 170.0,
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
                    top: 220,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[16]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(width: 2.0),
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
                    top: 400,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                                  MriList[17]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),
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
                    right: 40,
                    // distance between this child's left edge & left edge of stack
                    top: 420,
                    // distance between this child's top edge & top edge of stack
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceproviderScreen(id: widget.id),
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
                            SizedBox(width: 2.0),

                            Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.blueAccent)),
                                child: Text(
                                  MriList[18]['subService'],
                                  style: TextStyle(color: Colors.black),
                                )),

                          ],

                          /*decoration: BoxDecoration(border: Border.all(width:1.0,color: Colors.black26),
              shape: BoxShape.rectangle,
            ),*/
                        )),
                  ),

                ]))
          ]),
        )));
  }
}
