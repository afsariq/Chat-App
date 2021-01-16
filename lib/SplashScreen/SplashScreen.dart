import 'dart:async';

import 'package:flutter/material.dart';
import 'package:chat_App/screens/Welcome/welcome_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
    
  
    
    Timer(Duration(seconds:3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen())));
 
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children:<Widget> [

          Image.asset("Assets/Images/machanlogo.jpeg",width: 180,height: 180,),
          SizedBox(height:50),
          SpinKitPulse(
            color: Colors.blue,


          ),
          

        ],),
      
      
    );
  }
}