import 'package:chat_App/Phone_number/get_number.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/Images/log.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            // mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Text(
                "Take Privacy With you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Exo2',
                  fontSize: 38,
                  //fontWeight:FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Be Yourself in every message",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 65),
              GestureDetector(
                  child: Text(
                    "Terms & Conditions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[400],
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                    const url = 'https://google.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
              SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetPhoneNumberScreen()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 80)
            ],
          ),
        ));
  }
}
