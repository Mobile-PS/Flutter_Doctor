import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/config/route.dart';
import 'package:flutter_health_care_app/screens/orthopedic_service_screen.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:get/get.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Health Care App',
      theme:AppTheme.lightTheme,
     // home: OrthopaedicScreen(),
      routes: Routes.getRoute(),
        onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
    );
  }
}

