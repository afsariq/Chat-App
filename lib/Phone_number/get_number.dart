import 'package:chat_App/Phone_number/otp_verify.dart';
import 'package:flutter/material.dart';

class GetPhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/bg.png"), fit: BoxFit.cover)),

        width: double.infinity,
        height: double.infinity,
//color: Colors.blue[900],
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 120),
                Text(
                  "Enter your phone number to get started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      child: TextFormField(
                          enabled: false,
                          decoration: InputDecoration(
                            hintText: '+94',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            filled: true,
                            fillColor: Colors.white,
                          )
                          // hintText: 'Enter a search term'
                          ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    ),
                  ],
                ),
                SizedBox(height: 50),
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
                              builder: (context) => OtpVerifyScreen()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[800],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
