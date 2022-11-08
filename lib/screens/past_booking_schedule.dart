import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/payment_method.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';


class PastBookingSchedule extends StatefulWidget {
  @override
  _PastBookingSchedule createState() => _PastBookingSchedule();
}

class _PastBookingSchedule extends State<PastBookingSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Order Details',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            )),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      // Border radius
                      child:
                          ClipOval(child: Image.asset('assets/doctor.png')),
                    ),
                    title: Text(
                      'Dr. Rajeev S',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                    subtitle: Text(
                      'ENT, Dental, PPE, Ortho,Bones, Opthalmo,ENT, Dental, ...',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_rounded),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '25th Dec, Sunday',
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
                        '3:00 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            fontFamily: 'Nunito Sans'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Patient name : Rajesh mishra',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        fontFamily: 'Nunito Sans'),
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Service name : MRI Scan',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        fontFamily: 'Nunito Sans'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Status : Schedule',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        fontFamily: 'Nunito Sans'),
                  ),
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
                          "230.00",
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
                          "230.00",
                          style: TextStyle(
                              color: Color.fromRGBO(58, 58, 60, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              fontFamily: 'Nunito Sans'),
                        ),
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
