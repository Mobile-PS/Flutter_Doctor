import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/screens/Subservice_screen.dart';
import 'package:flutter_health_care_app/screens/generalsurgey_service_screen.dart';
import 'package:flutter_health_care_app/screens/gynace_service_screen.dart';
import 'package:flutter_health_care_app/screens/mri_service_screen.dart';
import 'package:flutter_health_care_app/screens/orthopedic_service_screen.dart';
import 'package:flutter_health_care_app/screens/sonography_service_screen.dart';
import 'package:flutter_health_care_app/screens/sub_service_screen.dart';
import 'package:flutter_health_care_app/screens/urosurgey_service_screen.dart';
import 'package:flutter_health_care_app/screens/xray_service_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ServiceCard extends StatelessWidget {
  final icon;
  final label;
  final int id,index;

  const ServiceCard({this.icon, this.label,this.id,this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        if(index == 1){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => XrayScreen(id: id),
            ),
          );
        }
        else if(index == 2){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GeneralSurgeyServiceScreen(id: id),
            ),
          );
        }
        else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubServiceScreen1(id: id, label: label),
            ),
          );
        }

      /*  if(id == 50) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrthopaedicScreen(id: id),
            ),
          );
        }
        if(id == 45) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GynaceSurgeyServiceScreen(id: id),
            ),
          );
        }
        if(id == 51) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubServiceScreen(id: id),
            ),
          );
        }
        if(id == 47) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GeneralSurgeyServiceScreen(id: id),
            ),
          );
        }

        if(id == 37) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MRIServiceScreen(id: id),
            ),
          );
        }

        if(id == 41) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SonographyServiceScreen(id: id),
            ),
          );
        }
        if(id == 46) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UroSurgeyServiceScreen(id: id),
            ),
          );
        }

        if(id == 53) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => XrayScreen(id: id),
            ),
          );
        }*/
      },
    child:
      Container(
      width: 150,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             // FaIcon(icon),
           Image.network(
                ApiConstants().imagebaseUrl+icon,
                width: 150,
            height: 150,
            fit: BoxFit.scaleDown,
          ),
             // Image.asset('assets/icon_ctscan.png'),

              SizedBox(
                height: 10,
              ),

              Expanded(child:

              Center(child:
                  Text(
                    label,
                    style: TextStyle(fontSize: 18,),
                    textAlign: TextAlign.center,
                  )))


            ],
          ),
        ),
      ),
    ));
  }
}
