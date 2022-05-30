import 'package:facebook_clone_ui_flutter/Home/header.dart';
import 'package:facebook_clone_ui_flutter/Home/post.dart';
import 'package:facebook_clone_ui_flutter/Home/secondbar.dart';
import 'package:facebook_clone_ui_flutter/Home/story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          TitleBar(),
          Divider(thickness: 0.5
            ,color: Colors.grey,),
          SecondTab(),
          Divider(thickness: 1,color: Colors.grey,),
          Story(),
          Divider(thickness: 2,color: Colors.grey,),
          Post(),
        ],
      ),
    );
  }
}
