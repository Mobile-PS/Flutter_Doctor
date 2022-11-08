import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/preferences/pref_repository.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/login_screen.dart';
import 'package:flutter_health_care_app/screens/about.dart';
import 'package:flutter_health_care_app/screens/drawer_hearder_widget.dart';
import 'package:flutter_health_care_app/screens/notification_list_screen.dart';
import 'package:flutter_health_care_app/screens/offer_list_screen.dart';
import 'package:flutter_health_care_app/screens/order_list_screen.dart';
import 'package:flutter_health_care_app/screens/user_profile.dart';
import 'package:get/get.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  final _prefRepo = PrefRepository();

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 14),
          const DrawerHeaderWidget(),
        /*  createDrawerBodyItem(
              text: 'Profile',
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfile(),
                  ),
                );
              }),*/

          createDrawerBodyItem(
              text: 'Offers',
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OfferListScreen(),
                  ),
                );


              }),

          createDrawerBodyItem(
              text: 'Orders',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderListScreen(),
                  ),
                );

              }),

          createDrawerBodyItem(
              text: 'My Notification',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationListScreen(),
                  ),
                );
              }),

          createDrawerBodyItem(
              text: 'About',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Aboutscreen(),
                  ),
                );
              }),


          createDrawerBodyItem(
              text: 'Logout',
              onTap: () {

                  _prefRepo.clearPreferences();

                Get.offAll(LoginScreen());

               /* Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                      (route) => false,//if you want to disable back feature set to false
                );*/

              }),


        ],
      ),
    );
  }

  Widget createDrawerBodyItem(
      {
         String text,
         GestureTapCallback onTap}) {
    return SizedBox(
        child: ListTile(
          title: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    )),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onTap: onTap,
        ));
  }
}
