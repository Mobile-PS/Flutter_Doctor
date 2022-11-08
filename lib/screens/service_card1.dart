import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/screens/serviceprovider_screen.dart';
import 'package:flutter_health_care_app/screens/sub_service_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ServiceCard1 extends StatelessWidget {
  final icon;
  final label;
  final int id;

  const ServiceCard1({this.icon, this.label,this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceproviderScreen(id: id),
          ),
        );
      },
    child:
      Container(
      width: 100,
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                ApiConstants().imagebaseUrl+icon,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
