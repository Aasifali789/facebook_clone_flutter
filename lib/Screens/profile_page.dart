import 'dart:io';
import 'package:facebook_clone_ui_flutter/Home/menubar.dart';
import 'package:facebook_clone_ui_flutter/Home/postbar.dart';
import 'package:facebook_clone_ui_flutter/Screens/Addfriend_Screen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text('Muhammad Aasif'),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: EdgeInsets.only(top: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/circle.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 140.0,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        child: Image(
                            image: AssetImage('images/circle.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Muhammad Aasif',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: [
                        Icon(Icons.add_circle),
                        Text('Add to Story'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      Text("Study at Mehran University",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.gamepad),
                      Text("Single",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      Text("About",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friends'),
                  TextButton(onPressed: () => {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AddFriendsPage()),
                  )
                  }, child: Text('Find Friends'))
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            Postbar(),
            Menubar(),
            // Post(),
          ],
        ),
      ),
    );
  }
}
