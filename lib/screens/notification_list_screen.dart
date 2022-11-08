import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/controllers/notification_screen_controller.dart';
import 'package:flutter_health_care_app/screens/notification_card.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:get/get.dart';



class NotificationListScreen extends StatefulWidget {

  const NotificationListScreen({Key key})
      : super(key: key);

  @override
  _NotificationListScreen createState() => _NotificationListScreen();
}

class _NotificationListScreen extends State<NotificationListScreen> {

  final regCtrl = Get.put(NotificationScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationScreenController>(builder: (_) {

      return Scaffold(
                appBar: AppBar(
                    elevation: 0,
                    title: Text(
                      'Notification',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.white,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
                backgroundColor: Colors.white,
                body: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child:
                  regCtrl.loading == true
                      ? Center(child:const ProgressBarWidget())
                      :
                  ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: regCtrl.loginScreenResponse.show.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 4),
                          child: NotificationCard(regCtrl.loginScreenResponse.show[index]),
                        );
                      }),
                ));
    });
          }
        }


