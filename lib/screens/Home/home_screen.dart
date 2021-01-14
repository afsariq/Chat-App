import 'package:chat_App/screens/Chat/chat_screen.dart';
import 'package:chat_App/screens/ContactProfile/contact_profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> containers = [
    Container(
      color: Colors.white,
      child: ListView(
        children: [
          Column(children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Assets/Images/3.jpeg"),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Malli",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Text("hello how are you???????????")
                        ]),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
              //height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            // SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Assets/Images/1.jpeg"),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ayya",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Text("hello how are you???????????")
                        ]),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
              //height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Assets/Images/3.jpeg"),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Akka",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text("hello how are you???????????")
                          ]),
                      onTap: () {}),
                ],
              ),
            ),
            SizedBox(height: 10),
          ])
        ],
      ),
    ),
    Container(
      color: Colors.pinkAccent,
    ),
    Container(
        child: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Assets/Images/3.jpeg"),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ayya",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            children: [
                              Icon(Icons.transit_enterexit_outlined,
                                  color: Colors.red),
                              Text("2012/05/03",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ]),
                  ),
                  IconButton(
                      icon: Icon(Icons.video_call, color: Colors.blue),
                      onPressed: null),
                  IconButton(
                      icon: Icon(Icons.call, color: Colors.blue),
                      onPressed: null)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Assets/Images/1.jpeg"),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brother",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            children: [
                              Icon(Icons.transit_enterexit_outlined,
                                  color: Colors.green),
                              Text("2012/05/03",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ]),
                  ),
                  IconButton(
                      icon: Icon(Icons.video_call, color: Colors.blue),
                      onPressed: null),
                  IconButton(
                      icon: Icon(Icons.call, color: Colors.blue),
                      onPressed: null)
                ],
              ),
            ),
          ],
        )
      ],
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text("Chat-App"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: ("CHATS"),
                ),
                Tab(text: ("STORIES")),
                Tab(
                  text: ("CALLS"),
                )
              ],
            ),
          ),
          drawer: new Drawer(
              elevation: 20.0,
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("Assets/Images/3.jpeg"),
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "First Name",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Last Name",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      new FlatButton.icon(
                        label: Text(
                          "Create Group",
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.people_outline,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      new FlatButton.icon(
                        label: Text(
                          "Contacts",
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.person_outline,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ContactProfileScreen()));
                        },
                      ),
                      new FlatButton.icon(
                        label: Text(
                          "Invite Friens",
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.person_add_outlined,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ContactProfileScreen()));
                        },
                      ),
                      new FlatButton.icon(
                        label: Text(
                          "Machang Web",
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.language_outlined,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ContactProfileScreen()));
                        },
                      ),
                      new FlatButton.icon(
                        label: Text(
                          "Saved Messages",
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.bookmark_outline,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ContactProfileScreen()));
                        },
                      ),
                      SizedBox(height: 25),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage("Assets/Images/drawer.png"),
                          // height: 60,
                          //width: 60,
                        ),
                      ),
                    ])
              ])),
          body: TabBarView(
            children: containers,
          ),
        ));
  }
}
