import 'package:chat_App/screens/ConfirmPin/confirm_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CreatePinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "PIN informations stored with app name encrypted so only you can access it. Your profile,your settings, and contacts will restore you reinstall and you won't need your pin to open the app but you can set it up. Learn more",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 60),
            TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Enter your pin",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                )),
            Text(
              "pin must be atleast 4 digits",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "CREATE ALPHANUMERIC PIN",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                  child: Row(children: [
                    Text("Fingerprint or pin active for unlock",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  //width: 50,
                  height: 30,
                  child: LiteRollingSwitch(
                    value: true,
                    textOn: 'on',
                    textOff: 'off',
                    colorOn: Colors.green,
                    colorOff: Colors.blueGrey,
                    iconOn: Icons.ac_unit,
                    iconOff: Icons.ac_unit,
                    onChanged: (bool state) {
                      print('turned ${(state) ? 'on' : 'off'}');
                    },
                  ),
                )
              ]),
            ),
            SizedBox(height: 70),
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
                          builder: (context) => ConfirmPinScreen()));
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue[600],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
