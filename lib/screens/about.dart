import 'dart:io';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Aboutscreen extends StatefulWidget {
  @override
  _Aboutscreen createState() => _Aboutscreen();
}

class _Aboutscreen extends State<Aboutscreen> {

  @override
  void initState() {
   // siginInController.init(context);
    if (Platform.isAndroid) WebView.platform = AndroidWebView();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Center(
                    child: Text(
                      'About US',
                    ),
                  ),
                ],
              ),
                  Expanded(child:
                  WebView(
                    initialUrl: 'http://103.14.99.198:8082/aboutUs/',
                    javascriptMode: JavascriptMode.unrestricted,
                  )
                  ),

            ])));
  }
}
