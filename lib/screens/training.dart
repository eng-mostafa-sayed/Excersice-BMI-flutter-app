import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'training_container.dart';

class Training extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Workouts')),
      //backgroundColor: Colors.teal,
      body: SafeArea(
          child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.vertical,
        children: <Widget>[
          trainigContainer(
              img_url:
                  "https://media0.giphy.com/media/8ZhQhDNeikLb4D1LY5/giphy.gif",
              txt: "side crunch "),
          SizedBox(
            height: 50,
          ),
          trainigContainer(
              img_url:
                  "https://i.pinimg.com/originals/76/96/48/769648b90e57ad26a4c19f2ba9489fac.gif",
              txt: "side plank"),
          SizedBox(
            height: 50,
          ),
          trainigContainer(
              img_url:
                  "https://media2.giphy.com/media/l2RnAY30gjJ6ukKJy/giphy.gif",
              txt: "crunch "),
          SizedBox(
            height: 50,
          ),
          trainigContainer(
              img_url:
                  "https://i.pinimg.com/originals/80/78/fc/8078fc0ef84baa3eb38427289a652e0a.gif",
              txt: "warm up"),
          SizedBox(
            height: 50,
          ),
          trainigContainer(
              img_url:
                  "https://i.pinimg.com/originals/76/45/7f/76457fa8abceadb776b13940c4473b7d.gif",
              txt: "upper body strength"),
          SizedBox(
            height: 50,
          ),
          trainigContainer(img_url:"https://media4.giphy.com/media/tsTsgT7v6wy5hYXI9U/giphy.gif",txt:"push up"),
          SizedBox(height: 50,),
          trainigContainer(
              img_url:
                  "https://i.pinimg.com/originals/90/6a/b1/906ab18564fd3a529199598b0d8250eb.gif",
              txt: "mountain climb"),
          SizedBox(height: 50,),
          trainigContainer(
              img_url:
              "https://media1.tenor.com/images/d221e69c018e43e86a835cfaf6b86212/tenor.gif?itemid=17352592",
              txt: "Lunges"),
          SizedBox(height: 50,),
          trainigContainer(
              img_url:
              "https://i.pinimg.com/originals/c2/e9/54/c2e9545d221dcc31475599299ed9ab61.gif",
              txt: "upper abs"),
        ],
      )),
    );
  }
}

