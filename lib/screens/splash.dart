import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:my_bmi_cal/screens/SelectionPage.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Splash Screen',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff393e46),
        primaryColor: Color(0xff393e46),

      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Color(0xff393e46),
      seconds: 6,
      navigateAfterSeconds: new SelectionPage(),
      title: new Text('Get Ready',textScaleFactor: 2,),
      image: new Image.asset('images/logo.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
     //loaderColor: Color(0xff00FFFF),
      loaderColor: Color(0xff2ecc71),
    );
  }
}