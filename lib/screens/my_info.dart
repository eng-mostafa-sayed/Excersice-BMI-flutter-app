
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_bmi_cal/constants.dart';

void main() {
  runApp(My_info());
}

class My_info extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        //backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 120.0,
                  backgroundImage: AssetImage('images/me.jpeg'),
                ),
                Text(
                  'mostafa sayed',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,size: 40,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+201150602373',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading:Image.asset('images/Whatsapp-Icon.png',width: 30,height: 100,),
                      title: Hyperlink(
                          'https://wa.me/+201150602373',"Whatsapp"),
                    )),
               Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 40,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'ms519197@gmail.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                     leading:Image.asset('images/fb_logo2.png',width:30,height: 80,),
                     title: Hyperlink(
                       'https://www.facebook.com/Eng.MostafaSayd/',"My Facebook"),
                        )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Image.asset('images/github_icon2.png',width: 30,height:90,),
                      title:Hyperlink('https://github.com/eng-mostafa-sayed', 'My Github'),
                    )
                ),
              ],
            )),

    );
  }
}



class Hyperlink extends StatelessWidget {
  final String _url;
  final String _text;

  Hyperlink(this._url, this._text);

  _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        _text,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Source Sans Pro'),

      ),
      onTap: _launchURL,
    );
  }
}