import 'package:flutter/material.dart';

class raised_selector_button extends StatelessWidget {
  raised_selector_button({@required this.txt, this.rute});
  final String txt;
  var rute;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 220,
      child: RaisedButton(
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => rute,
            ),
          );
        },
      ),
    );
  }
}
