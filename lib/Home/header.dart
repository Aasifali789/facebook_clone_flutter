import 'dart:io';

import 'package:facebook_clone_ui_flutter/Screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class TitleBar extends StatefulWidget {
  const TitleBar({Key? key}) : super(key: key);
  @override
  _TitleBarState createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  File? _image;
  final imagePicker =ImagePicker();
  Future getimage()async{
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       IconButton(
          splashColor: Colors.transparent,
            iconSize: 50.0,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );

            }, icon:
        CircleAvatar(
          radius: 25.0,
    backgroundImage: AssetImage('images/circle.jpeg',),
        )),
       Container(
         // margin: EdgeInsets.only(right: 8),
         width: 270,
           height: 40,
           decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
             border: Border.all(width: 1,)
           ),
           child:
       TextButton(onPressed: (){}, child: Text("What's on your mind?",style: TextStyle(
         fontSize: 17,color: Colors.black87,
       ),))),
        IconButton(onPressed: getimage,
            icon: Icon(Icons.photo,color: Colors.green,size: 30,))
      ],
    );
  }
}

