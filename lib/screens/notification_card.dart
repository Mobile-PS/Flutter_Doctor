

import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/model/NotificationDataModel.dart';


class NotificationCard extends StatelessWidget {

  final Show show;
   NotificationCard(this.show);

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child:  Card(
            elevation: 2,
            child: Container(
              height: 50,
                margin: EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.add_alert_sharp),
                      SizedBox(width: 10,),
                      Text(
                        show.notification,
                        style: TextStyle(fontSize: 17, color: Colors.black,  	fontWeight: FontWeight.bold),
                      ),

                    ]))),

    );
  }

}