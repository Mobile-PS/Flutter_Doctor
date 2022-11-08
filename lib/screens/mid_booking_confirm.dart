import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BookingConfirm extends StatefulWidget {
  @override
  _BookingConfirm createState() => _BookingConfirm();
}

class _BookingConfirm extends State<BookingConfirm> {

  final regCtrl = Get.put(DocDetailsController());

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 1), () =>  regCtrl.postData());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DocDetailsController>(builder: (_)
    {
      if (regCtrl.loading) {
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
            backgroundColor: const Color.fromRGBO(243, 246, 247, 1),
            body: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.white,
              child: const Center(child: ProgressBarWidget()),
            ));
      }
      else {
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
            body: SingleChildScrollView(
                child: Stack(children: <Widget>[
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    color: LightColor.purpleExtraLight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          /* Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/images/midlogo.png',
                ),
              ),*/
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            "Booking Confirmed!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 25.0,
                                fontFamily: 'Nunito Sans'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Stack(children: [
                            Material(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              elevation: 10,
                              child: Container(
                                height: 130,
                                width: 350,
                              ),
                            ),
                            Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 10, 0, 0),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: AssetImage(
                                            "assets/doctor_1.png"),
                                        backgroundColor: Colors.transparent,
                                      ),
                                      title: Text(
                                          regCtrl.ncartData[0]
                                              .hospitalName),
                                      subtitle: Text(
                                          ''),
                                    ),
                                  ),
                                )),
                            Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 280,
                                    child: Text(
                                      regCtrl.date + ' ' + regCtrl.time,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0)),
                                      color: LightColor.purple,
                                    ),
                                  ),
                                ))
                          ]),
                          SizedBox(
                            height: 35,
                          ),
                          SizedBox(
                              height: 53,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.offAll(HomePageScreen());
                                },
                                child: Text(
                                  "Go To Home",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)), primary: Color.fromRGBO(250, 226, 140, 1), elevation: 5),

                              )),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                              height: 53,
                              child: ElevatedButton(
                                onPressed: () {

                                  regCtrl.cartData.clear();
                                  regCtrl.cartDatafees.clear();
                                  regCtrl.fee1 = '';
                                  regCtrl.fee = 0;
                                  Get.offAll(HomePageScreen());
                                },
                                child: Text(
                                  "Book Another Appointment",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0),
                                ),

                                style: ElevatedButton.styleFrom(
                                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)), primary: Colors.white, elevation: 5),

                              )),
                        ],
                      ),
                    ),
                  )
                ])));
      }
    });
  }
}
