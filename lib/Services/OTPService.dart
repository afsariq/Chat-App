import 'package:chat_App/screens/OtpVerify/otp_verify_screen.dart';
import 'package:chat_App/screens/ProfileSetup/profile_setup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPService {
  String phone;
  String smsOTP;
  String verificationId;
  FirebaseAuth _auth = FirebaseAuth.instance;

  OTPService(this.phone);

  ///This part is for verifying the phone
  Future<void> verifyPhone(BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: phone,
          timeout: Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credintial) async {
            await _auth.signInWithCredential(credintial).then((userCredential) {
              if (userCredential.user != null) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileSetupScreen()));
              }
            });
          },
          verificationFailed: (FirebaseAuthException exception) {
            print(exception.message);
          },
          codeSent: (String verID, [int resendtoken]) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => OtpVerifyScreen(
                          verificationId: verID,
                        )));
          },
          codeAutoRetrievalTimeout: (String verID) {});
    } catch (e) {
      print(e);
    }
  }
}
