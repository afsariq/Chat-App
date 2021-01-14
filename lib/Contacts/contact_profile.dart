import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ContactProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              // backgroundColor: Colors.amber,
              backgroundImage: AssetImage('Assets/Images/3.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              "Contact Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "0771234567",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.blue,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(
                    Icons.videocam_sharp,
                    color: Colors.blue,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(
                    Icons.call_end,
                    color: Colors.blue,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "This person is in your contact",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),

                // SizedBox(width:80),
                IconButton(
                    icon: Icon(
                      Icons.contact_page,
                      color: Colors.blue,
                    ),
                    onPressed: () {})
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Mute Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  // SizedBox(width:125),
                  SizedBox(
                    height: 30,
                    //width: 50,
                    child: LiteRollingSwitch(
                      value: true,
                      textOn: 'on',
                      textOff: 'off',
                      colorOn: Colors.blue,
                      colorOff: Colors.blueGrey,
                      iconOn: Icons.ac_unit,
                      iconOff: Icons.ac_unit,
                      onChanged: (bool state) {
                        print('turned ${(state) ? 'on' : 'off'}');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shared media",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "media,link,Documents",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ]),
                  ),
                  // SizedBox(width:125),
                  GestureDetector(
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Chat Colour",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 10,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "No Group in Common",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Report Contact",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(Icons.thumb_down, color: Colors.red),
                    onPressed: null)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Block Contact",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(Icons.block, color: Colors.red), onPressed: null)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Encryption",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Messages and calls are end to end encypted",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ]),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      onPressed: () {})
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
