import 'package:chat_App/screens/ProfileSetup/profile_setup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifyScreen extends StatelessWidget {
  final TextEditingController codeController = new TextEditingController();
  final String verificationId;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  OtpVerifyScreen({this.verificationId});

  //This is for signing in the code
  Future<void> signIn(BuildContext context) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: codeController.text);

    await _auth.signInWithCredential(credential).then((userCredential) {
      if (userCredential.user != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProfileSetupScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[900],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/bg.png"), fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 120),
            Text(
              "Enter the code we sent",
              style: TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: PinCodeTextField(
                backgroundColor: Colors.transparent,
                appContext: context,
                length: 6,
                controller: codeController,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  inactiveColor: Colors.black,
                  activeColor: Colors.black,
                  selectedColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 250,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  signIn(context); //to sign in

                  //Navigator.pushReplacement(
                  //  context,
                  //MaterialPageRoute(
                  //  builder: (context) => ProfileSetupScreen()));
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
            ),
          ],
        ),
      ),
    );
  }
}
