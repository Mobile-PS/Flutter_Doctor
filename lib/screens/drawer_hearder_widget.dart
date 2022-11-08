import 'package:flutter/material.dart';


class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/doctor_1.png'),
                    ))),
            SizedBox(height: 5.0),
            Visibility(
                visible: false,
                child:
            Align(
              alignment: Alignment.center,
              child: Text(
                'Rajesh Sri',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    fontFamily: 'Gelion'),
              ),
            )),

         /*   FlatButton(
              minWidth: 182,
              height: 39,
              onPressed: () {
                 // Get.to(EditProfile());
              },
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              color: Colors.white,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.black, width: 1)),
            )*/

          ],
        ));
  }
}
