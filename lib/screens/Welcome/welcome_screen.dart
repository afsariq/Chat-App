import 'package:chat_App/screens/GetNumber/get_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
       backgroundColor: Colors.white,
        body: ListView(
         children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height*0.92,
             color: Colors.white,

              
          child: Column(
            children:<Widget>[
                 Column(
                       children:<Widget>[
              Image.asset("Assets/Images/logo1.png",width: 300,),
               Text(
                "Take Privacy With you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Exo2',
                 fontSize: 25,
                 // fontSize: textScaleFactor * 25,
                    //fontWeight:FontWeight.bold,
                    color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Be Yourself in every message",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    //fontSize: textScaleFactor * 32,
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

            ]
          ),
                  
           
        
       
          ]),
     

        ),
        
  Container(
              height: MediaQuery.of(context).size.height*0.08,

             
             decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/Images/Capture.PNG"),
              
              fit: BoxFit.cover,
            ),
          ),
         
          
          ),
           ]  ),
        );
  }
}