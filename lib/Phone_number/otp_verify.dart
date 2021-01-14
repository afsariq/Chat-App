import 'package:chat_App/profile_setup/profile_setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp_verify_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       // backgroundColor: Colors.blue[900],
     body: Container(

       decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/bg.png"), fit: BoxFit.cover)),
       

    child: 
      ListView(

        children: <Widget>[
            SizedBox(height:120),
          Text("Enter the code we sent to 0771234567",
          
         style: TextStyle(
            fontSize:25,
            color: Colors.white

          ),
           textAlign: TextAlign.center,
          ),

        SizedBox(height: 50,),

        Padding(
              padding: const EdgeInsets.all(40.0),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  inactiveColor: Colors.black,
                  activeColor: Colors.black,
                  selectedColor: Colors.black,
                ),
              ),
            ),
      
          SizedBox(height:80),

                    SizedBox(
                      width: 250,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                
                        onPressed: (){
                            Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => profile_setup()));
               
                        },
                        child: Text("Next",
                        style: TextStyle(
                          fontSize: 20,
                          color:Colors.white,
                        ),),
                        color: Colors.blue[800],
                        
                        ),
                    ),
            

        ],


      ),
    
     ),
      
    );
  }
}