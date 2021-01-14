import 'package:chat_App/Chat_screen/pop_up.dart';
import 'package:chat_App/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_App/Chat_screen/pop_up.dart';

class chat_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        
         leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
       Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home_Screen()));
    }
  ), 
         
         
         
        //centerTitle: true,
         title: Column(children:[
           Row(children:[
            Image.asset('Assets/Images/3.jpeg',width: 40,height: 40,),
            SizedBox(width:25),
            Column(children:[
             Text("Name"),
           Text("Online",style: TextStyle(fontSize: 10,color: Colors.greenAccent),)])
           ])
         ]),

         
         actions: [
        // action button
       Row(
         children:[
         
         Title(color: Colors.white, child: Column(children:[
          
         ]),),


         IconButton(icon: Icon(Icons.videocam_sharp,color:Colors.white), onPressed: null),
           IconButton(icon: Icon(Icons.call,color:Colors.white), onPressed: null),
           //  IconButton(icon: Icon(Icons.more_vert,color:Colors.white), onPressed: null),
          PopupMenuButton(
            onSelected: choiceMade,
                        
                        itemBuilder: (BuildContext context){
                        return menues.choice.map((String choice){
            
                          return PopupMenuItem(
                            value:choice,
                            child:Text(choice),
            
                            
                          );
                          
            
                        }).toList();
                      })
                     ])],
            
                  ),
            
                  
                  body: Column(
                    children:<Widget>[
                    
            
                      Expanded(child: ListView(children:<Widget> [
            
                        Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                             //alignment: Alignment.topLeft,
                              constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width*0.70),
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.symmetric(vertical:10),
                               child:Text("A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument."),
                               decoration: BoxDecoration(
                                 color:Colors.blue,
                                 borderRadius:BorderRadius.circular(10)
                               ),
                        ),
                            
                        ]),
            
                          Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                          children:[
                            Container(
                             //alignment: Alignment.topLeft,
                              constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width*0.70),
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.symmetric(vertical:10),
                               child:Text("Learn English Free with some Bible stories, starting with Abraham. Take a Look at the Book. Learn the Story. Examine the Message."),
                               decoration: BoxDecoration(
                                 color:Colors.grey[200],
                                 borderRadius:BorderRadius.circular(10)
                               ),
                        ),
                            
                        ]),
                        
                       
                        
                       
            
                      ],),
                      ),
            
                       Container(
                          padding: EdgeInsets.all(10),
            
                          child: Row(
                            children:<Widget>[
            
                              IconButton(icon: Icon(Icons.camera,color: Colors.blue,),onPressed: (){},),
                               IconButton(icon: Icon(Icons.attach_file,color: Colors.blue,),
                               
                               onPressed: (){
                                 _bottomSheet(context);

                               },),
            
                           Expanded(   child:TextField(
                                decoration: InputDecoration.collapsed(hintText: "Send a message"),
            
                                textCapitalization: TextCapitalization.sentences,
                              ),),
            
                                IconButton(icon: Icon(Icons.send,color: Colors.blue,),onPressed: (){},),
                                  IconButton(icon: Icon(Icons.mic,color: Colors.blue,),onPressed: (){},),
            
                            ]
                          ),
                        ),
            
                    ],
                  ),
            
                 
            
                 
            
                 
                  
                );
              }
            
              void choiceMade(String value) {

               
                if(value=='Settings')
                {
                     print('vlue');
                }

                   if(value=='Contact Info')
                {
                     print('valueee');
                }
                

  }
  _bottomSheet(context){
    showModalBottomSheet(context: context, builder: (BuildContext c){

      return Container(
        height:80 ,
        

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children:<Widget>[
              Expanded(
                            child: 
                IconButton(icon:Icon( Icons.image,color: Colors.blue,),onPressed:(){} ,),
              ),
              Expanded(child: IconButton(icon:Icon( Icons.topic,color: Colors.blue,),onPressed:(){} ,)),
              Expanded(child: IconButton(icon:Icon( Icons.link,color:Colors.blue),onPressed:(){} ,)),
               Expanded(child: IconButton(icon:Icon( Icons.person,color:Colors.blue),onPressed:(){} ,))
              
            ]
          ),
        ),
      );
    });
  }
}