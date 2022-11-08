import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/screens/payment_method.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/widgets/cart_list_tile.dart';
import 'package:flutter_health_care_app/widgets/cart_list_tile1.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class BookingOverview extends StatefulWidget {
  @override
  _Payment createState() => _Payment();
}

class _Payment extends State<BookingOverview> {

  final regCtrl = Get.put(DocDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {

            await launch ("tel:+917080909046");

          },
          child: Icon(Icons.call, color: Colors.white, size: 29,),
          backgroundColor: Colors.blue,
          elevation: 5,
          splashColor: Colors.grey,
        ),
        appBar: AppBar(
            title: Text(
              'Payment',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            )),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Booking Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 26.0,
                        fontFamily: 'Nunito Sans'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 /* ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      // Border radius
                      child:
                          ClipOval(child: Image.network(ApiConstants().imagebaseUrl+regCtrl.hospitalImage)),
                    ),
                    title: Text(
                      regCtrl.finalname,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ),*/

                  Container(height: MediaQuery.of(context).size.height/2,
                  child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: regCtrl.ncartData.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0),
                          child: CartListTileWidget1(
                            text: regCtrl.ncartData[index].subServiceName,
                            text1: regCtrl.ncartData[index].serviceName,
                            text2: regCtrl.ncartData[index].hospitalName,
                            price: regCtrl.ncartData[index].subServiceRate,
                            onClick: (value) {
                              regCtrl.nRemoveCartData(index);
                              // con.updateIndex(index);
                            },
                            //check: con.selectedIndex == index?true:false,
                          ),
                        );
                      }),

                  ),

                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.face),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        regCtrl.nametxtController.text,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_rounded),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        regCtrl.date,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        regCtrl.time,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  /*Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child:
                      Text(
                        regCtrl.servName+','+regCtrl.subServname,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      )),
                    ],
                  ),*/
/*
                  SizedBox(
                    height: 5,
                  ),*/
                 /* Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child:
                      Text(
                        regCtrl.loginScreenResponse.show[0]
                            .hospitalAddress,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      )),
                    ],
                  ),*/

                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price Breakup",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                      Text(
                        "₹",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fees",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Text(
                          regCtrl.fee1,
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Booking charges",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Text(
                          "0.00",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Offer",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Text(
                          "0.00",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Text(
                          "0.00",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Image.asset('assets/dash.png')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                        Text(
                          regCtrl.fee1,
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 40,
                            width: 135.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentMethod(),
                                  ),
                                );
                              },
                              child: Text(
                                "Pay now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0),
                              ),

                                style: ElevatedButton.styleFrom(
                                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)), primary: LightColor.purple, elevation: 5),


                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}
