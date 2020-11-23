import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:my_bmi_cal/screens/input_page.dart';
import 'package:my_bmi_cal/screens/SelectionPage.dart';
import 'package:my_bmi_cal/screens/splash.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      home: Splash2(),
    );
  }
}
