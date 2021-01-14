import 'package:chat_App/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

class ConfirmPinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: <Widget>[
          SizedBox(height: 30),
          Column(children: [
            Text(
              "Create your pin",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Confirm your pin",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 60),
            TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Re enter your pin",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                )),
            SizedBox(height: 60),
            SizedBox(
              width: 250,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue[600],
              ),
            ),
          ])
        ]));
  }
}
