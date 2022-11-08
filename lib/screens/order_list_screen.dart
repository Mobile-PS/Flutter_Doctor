
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/order_screen_controller.dart';
import 'package:flutter_health_care_app/screens/order_card_widget.dart';
import 'package:flutter_health_care_app/screens/past_booking_details.dart';
import 'package:flutter_health_care_app/screens/past_booking_schedule.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:get/get.dart';


class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreen();
}

class _OrderListScreen extends State<OrderListScreen> {

  final con = Get.put(OrderScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: Text('Orders',style: TextStyle(color: Colors.black),),
       iconTheme: IconThemeData(
           color: Colors.black
       ),
     ),
     body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          GetBuilder(
              init: con,
              builder: (context) {
               return con.loading? Expanded(child:Center(child: ProgressBarWidget()),
                ):
                 con.selectedByDataList.isEmpty?
                 Expanded(
                     child:
                    Center(child:
                    Text(
                    'No Order Found',
                    style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    fontFamily: 'Nunito Sans'),
                ))):
                 Expanded(
                    child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: con.selectedByDataList.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            elevation: 8.0,
                            // color: cardBackgroundColor,
                            child: Padding(padding: EdgeInsets.all(10),
                                child:Row(children: [

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Patient name : ${con.selectedByDataList[index].patientName}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          Text(
                                            'Date : ${con.selectedByDataList[index].selectedDate}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Time : ${con.selectedByDataList[index].selectedTime}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Payment Mode : ${con.selectedByDataList[index].paymentMethod}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Service Name : ${con.selectedByDataList[index].subserviceName}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Price : ${con.selectedByDataList[index].price.toString()}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                                fontFamily: 'Nunito Sans'),
                                          ),
                                          const SizedBox(height: 10),

                                        ],
                                      ),

                                ],)
                            ),
                          );
                        }));
              }
          ),

        ]
      ),
    ));
  }
}
