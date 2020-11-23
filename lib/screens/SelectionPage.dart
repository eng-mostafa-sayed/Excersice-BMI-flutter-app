import 'package:flutter/material.dart';
import 'input_page.dart';
import 'my_info.dart';
import 'training.dart';
import 'raised_selector_button.dart';

enum Gender {
  male,
  female,
}

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Image.asset(
                'images/hello.jpg.png',
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20.0),
              raised_selector_button(
                txt: "   Dialy  Training   ",
                rute: Training(),
              ),
              SizedBox(height: 30.0),
              raised_selector_button(
                txt: 'Calculate my BMI',
                rute: InputPage(),
              ),
              SizedBox(height: 30.0),
              raised_selector_button(
                txt: 'About Developer ',
                rute: My_info(),
              ),
            ],
          ),
        ));
  }
}
