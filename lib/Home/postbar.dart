import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Postbar extends StatelessWidget {
   Postbar({Key? key}) : super(key: key);
  File? _image;
  final imagePicker =ImagePicker();
  Future getimage()async{
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () => print('User Avatar Clicked'),
          icon: CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/circle.jpeg'),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            "What's on your mind ?",
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: getimage,
              icon: Icon(Icons.photo_album_outlined),
            ),
            Text('Photo'),
          ],
        )
      ],
    );
  }
}
