import 'package:flutter/material.dart';
import 'package:my_bmi_cal/constants.dart';
class trainigContainer extends StatelessWidget {
  trainigContainer({
    @required this.img_url,
    this.txt,
  });
  final String img_url;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(left:0.0,right: 20.0),
      height: 120.0,
      color: kActiveCardColour,
      child: Row(
        children: <Widget>[
          Image.network(
            img_url,
            width: 170.0,
            height: 120.0,
          ),
          Container(
            child: Center(
              child: Text("\n"+txt,style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro'),),
            ),
            width: 180,
            height: 120,
          )
        ],
      ),
    );
  }
}
