// import '/screens/add_info_page.dart';
import '/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(DigitalCard());

class DigitalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   //'/': (context) => LandingPage(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/addInfoPage': (context) => AddInfoPage(),
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFFf2f2f2),
        scaffoldBackgroundColor: Color(0XFFf2f2f2),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xff9f9fa3),
          ),
        ),
      ),
      home: LandingPage(),
    );
  }
}
