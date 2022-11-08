import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/screens/patient_profile.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/cart_list_tile.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartScreen createState() => _MyCartScreen();
}

class _MyCartScreen extends State<MyCartScreen> {
  final con = Get.put(DocDetailsController());

  var Key_Message = 'KEY';

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 1), () => con.fetchCart());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DocDetailsController>(builder: (_) {
      return Scaffold(
          body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 7,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topCenter,
                    colors: [
                      kPrimaryWhite,
                      kPrimaryWhite,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 26.8,
                            color: Colors.black,
                          )),
                    ),
                    Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Cart",
                              style: TextStyles.titleNormal.white,
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

                    con.loading?
                       Center(child: ProgressBarWidget()):
                       Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 60),
                            child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: con.ncartData.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 0),
                                    child: CartListTileWidget(
                                      text: con.ncartData[index].subServiceName,
                                      price: con.ncartData[index].subServiceRate,
                                      onClick: (value) {
                                        con.nRemoveCartData(index);
                                        // con.updateIndex(index);
                                      },
                                      //check: con.selectedIndex == index?true:false,
                                    ),
                                  );
                                })),
                      )

            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child:Column(children: [
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PatientData(id: int.parse(con.hospiID)),
                          ),
                        );
                        /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PatientData(id: widget.id),
                                          ),
                                        );*/
                      },
                      child: Text(
                        "Checkout",
                        style: TextStyles.titleNormal.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                      Get.offAll(HomePageScreen());
                        /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PatientData(id: widget.id),
                                          ),
                                        );*/
                      },
                      child: Text(
                        "Go to Home",
                        style: TextStyles.titleNormal.white,
                      ),
                    ),
                  ),

      ],)


              ))
        ],
      ));
    });
  }
}
