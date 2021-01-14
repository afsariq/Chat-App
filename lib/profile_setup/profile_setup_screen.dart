import 'package:chat_App/Pin_create/pin_create.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class profile_setup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      body:

        ListView(
          children: [

            Container(

              child:

               Column (
                children:[        
                  SizedBox(height:20),        
                Text("Set up your profile",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontSize: 25,
                
                
                ),
                
                ),
             SizedBox(height:20),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 50,
                  ),

                SizedBox(height:15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                       decoration: InputDecoration(
                         fillColor: Colors.white,
                         hintText: "Kasun Bandara",hintStyle: TextStyle(color: Colors.white),
                         border: UnderlineInputBorder(
                           
                           borderRadius: BorderRadius.circular(15)
                         ),)
                    ),
                  ),
                   SizedBox(height:15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                       decoration: InputDecoration(
                         hintText: "NickName(Optional)",hintStyle: TextStyle(color: Colors.white),
                         border: UnderlineInputBorder(
                           borderRadius: BorderRadius.circular(15)
                         ),)
                    ),
                  ),


                        SizedBox(height:40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children:[


                        Text("Dark Mode",style: TextStyle(color: Colors.white,fontSize: 20,)),
              SizedBox(width: 100,),
             
               SizedBox(
                 height: 30,
                // width: 50,
                 child: LiteRollingSwitch(
                     
                value: true,
                textOn: 'on',
                textOff: 'off',
                
                colorOn: Colors.green,
                colorOff: Colors.blueGrey,
             iconOn: Icons.done,
               iconOff: Icons.block,
                onChanged: (bool state) {
                    print('turned ${(state) ? 'on' : 'off'}');
                },
              ),
               ),
              

                      ]
                    ),
                  ),
                SizedBox(height:30),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),


                 SizedBox(height:50),

                   SizedBox(
                     width: 250,
                     child: RaisedButton(
                          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                
                        onPressed: (){
                            Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Create_pin_screen()));
               
                        },
                        child: Text("Continue",
                        style: TextStyle(
                          fontSize: 20,
                          color:Colors.white,
                        ),),
                        color: Colors.blue[600],
                        
                        ),
                   ),

                    
          ]
          )
          )
          ],
            ),
            
          
        



      
      
    );
  }
}