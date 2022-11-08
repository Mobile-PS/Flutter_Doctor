import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/preferences/pref_repository.dart';
import 'package:flutter_health_care_app/screens/LoginScreen/login_screen.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';





class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashScreen> {
  final _prefRepo = PrefRepository();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) {
    navigate();
    });
    super.initState();
  }

  navigate() async {
    final profileResponse = await _prefRepo.getLoginUserData();

    if (profileResponse != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomePageScreen(),
          ));
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => LoginScreen(),
          ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E3A48),
      body: SafeArea(
        child: Center(
          child:
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset('assets/logo.jpg'),
          ),
        ),
      ),

    );
  }
}
