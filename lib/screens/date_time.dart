
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/animation/FadeAnimation.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/controllers/placeorder_screen_controller.dart';
import 'package:flutter_health_care_app/screens/confirmation_payment.dart';
import 'package:flutter_health_care_app/screens/payment_method.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:time_range/time_range.dart';
import 'package:url_launcher/url_launcher.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({ Key key }) : super(key: key);

  @override
  _DateAndTimeState createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  int _selectedDay = 2;
  int _selectedRepeat = 0;
  String _selectedHour = '10:00 am';
  List<int> _selectedExteraCleaning = [];
  final profileController = Get.put(DocDetailsController());


  ItemScrollController _scrollController = ItemScrollController();

  final List<dynamic> _days = [
    [1, 'Fri'],
    [2, 'Sat'],
    [3, 'Sun'],
    [4, 'Mon'],
    [5, 'Tue'],
    [6, 'Wed'],
    [7, 'Thu'],
    [8, 'Fri'],
    [9, 'Sat'],
    [10, 'Sun'],
    [11, 'Mon'],
    [12, 'Tue'],
    [13, 'Wed'],
    [14, 'Thu'],
    [15, 'Fri'],
    [16, 'Sat'],
    [17, 'Sun'],
    [18, 'Mon'],
    [19, 'Tue'],
    [20, 'Wed'],
    [21, 'Thu'],
    [22, 'Fri'],
    [23, 'Sat'],
    [24, 'Sun'],
    [25, 'Mon'],
    [26, 'Tue'],
    [27, 'Wed'],
    [28, 'Thu'],
    [29, 'Fri'],
    [30, 'Sat'],
    [31, 'Sun']
  ];

  final List<String> _hours = <String>[
    '01:00 am',
    '01:30 am',
    '02:00 am',
    '02:30 am',
    '03:00 am',
    '03:30 am',
    '04:00 am',
    '04:30 am',
    '05:00 am',
    '05:30 am',
    '06:00 am',
    '06:30 am',
    '07:00 am',
    '07:30 am',
    '08:00 am',
    '08:30 am',
    '09:00 am',
    '09:30 am',
    '10:00 am',
    '10:30 am',
    '11:00 am',
    '11:30 am',
    '12:00 pm',
    '12:30 pm',
    '01:00 pm',
    '01:30 pm',
    '02:00 pm',
    '02:30 pm',
    '03:00 pm',
    '03:30 pm',
    '04:00 pm',
    '04:30 pm',
    '05:00 pm',
    '05:30 pm',
    '06:00 pm',
    '06:30 pm',
    '07:00 pm',
    '07:30 pm',
    '08:00 pm',
    '08:30 pm',
    '09:00 pm',
    '09:30 pm',
    '10:00 pm',
    '10:30 pm',
    '11:00 pm',
    '23:30 pm',
  ];

  final List<String> _repeat = [
    'No repeat',
    'Every day',
    'Every week',
    'Every month'
  ];

  final List<dynamic> _exteraCleaning = [
    ['Washing', 'https://img.icons8.com/office/2x/washing-machine.png', '10'],
    ['Fridge', 'https://img.icons8.com/cotton/2x/fridge.png', '8'],
    ['Oven', 'https://img.icons8.com/external-becris-lineal-color-becris/2x/external-oven-kitchen-cooking-becris-lineal-color-becris.png', '8'],
    ['Vehicle', 'https://img.icons8.com/external-vitaliy-gorbachev-blue-vitaly-gorbachev/2x/external-bycicle-carnival-vitaliy-gorbachev-blue-vitaly-gorbachev.png', '20'],
    ['Windows', 'https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/2x/external-window-interiors-kiranshastry-lineal-color-kiranshastry-1.png', '20'],
  ];

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      _scrollController.scrollTo(
        index: 24,
        duration: Duration(seconds: 3),
        curve: Curves.easeInOut,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {

            await launch ("tel:+2349024667402");

          },
          child: Icon(Icons.call, color: Colors.white, size: 29,),
          backgroundColor: Colors.blue,
          elevation: 5,
          splashColor: Colors.grey,
        ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: FadeAnimation(1, Padding(
                padding: EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
                child: Text(
                  'Select Date \nand Time',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ))
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(

          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030, 12, 1),
                onDateSelected: (date) {
                  String formattedDate = DateFormat('dd/MM/yyyy').format(date);
                  print(formattedDate);
                   profileController.updateDate(formattedDate);
                  print(date);
                  },
                leftMargin: 20,
                monthColor: Colors.blueGrey,
                dayColor: Colors.teal[200],
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent[100],
                dotsColor: Color(0xFF333A47),
                locale: 'en_ISO',
              ),
              SizedBox(height: 30,),
             /* FadeAnimation(1, Row(
                children: [
                  Text("October 2021"),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {}, 
                    icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.grey.shade700,),
                  )
                ],
              )),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.grey.shade200),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _days.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeAnimation((1 + index) / 6, GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDay = _days[index][0];
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _selectedDay == _days[index][0] ? Colors.blue.shade100.withOpacity(0.5) : Colors.blue.withOpacity(0),
                          border: Border.all(
                            color: _selectedDay == _days[index][0] ? Colors.blue : Colors.white.withOpacity(0),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_days[index][0].toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(_days[index][1], style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                    ));
                  }
                ),
              ),
              SizedBox(height: 20,),*/

              GetBuilder<DocDetailsController>(builder: (_) {

              return FadeAnimation(1, Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.grey.shade200),
                ),
                child: ScrollablePositionedList.builder(
                  itemScrollController: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: _hours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                          _selectedHour = _hours[index];
                          profileController.updateTime(_selectedHour);
                      },
                      child:  AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _selectedHour == _hours[index] ? Colors.orange.shade100.withOpacity(0.5) : Colors.orange.withOpacity(0),
                          border: Border.all(
                            color: _selectedHour == _hours[index] ? Colors.orange : Colors.white.withOpacity(0),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_hours[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ));}),


         /*     SizedBox(height: 40,),
              FadeAnimation(1.2, Text("Repeat", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
              SizedBox(height: 10,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _repeat.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedRepeat = index;
                        });
                      },
                      child: FadeAnimation((1.2 + index) / 4, Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _selectedRepeat == index ? Colors.blue.shade400 : Colors.grey.shade100,
                        ),
                        margin: EdgeInsets.only(right: 20),
                        child: Center(child: Text(_repeat[index], 
                          style: TextStyle(fontSize: 18, color: _selectedRepeat == index ? Colors.white : Colors.grey.shade800),)
                        ),
                      )),
                    );
                  },
                )
              ),*/
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {

                      if(profileController.date != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingOverview(),
                          ),
                        );
                      }
                      else{
                        showSnackbar('please select date and time');
                      }
                    },
                    child: Text(
                      "Proceed",
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
              ],)

            /*  FadeAnimation(1.4, Text("Additional Service", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
              SizedBox(height: 10,),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _exteraCleaning.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_selectedExteraCleaning.contains(index)) {
                            _selectedExteraCleaning.remove(index);
                          } else {
                            _selectedExteraCleaning.add(index);
                          }
                        });
                      },
                      child: FadeAnimation((1.4 + index) / 4, Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _selectedExteraCleaning.contains(index) ? Colors.blue.shade400 : Colors.transparent,
                        ),
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(_exteraCleaning[index][1], height: 40,),
                            SizedBox(height: 10,),
                            Text(_exteraCleaning[index][0], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: _selectedExteraCleaning.contains(index) ? Colors.white : Colors.grey.shade800),),
                            SizedBox(height: 5,),
                            Text("+${_exteraCleaning[index][2]}\$", style: TextStyle(color: Colors.black),)
                          ],
                        )
                      ))
                    );
                  },  
                )
              ),*/
            ],
          )),
        ),
      )
    );
  }
}