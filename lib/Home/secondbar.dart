import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  File? _image;
  final imagePicker =ImagePicker();
  Future getimage()async{
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  File? _imagee;
  final imagePickerr =ImagePicker();
  Future getimagee()async{
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          TextButton(onPressed: getimage, child: Row(
            children: [
              Icon(Icons.live_tv_outlined,color: Colors.red,),
              Text("Live",style: TextStyle(fontSize: 17,color: Colors.black54),)
            ],
          )
          ),
            Container(
              child: VerticalDivider(color: Colors.red,thickness: 1,),
            ),
            TextButton(onPressed: getimagee, child: Row(
              children: [
                Icon(Icons.photo,color: Colors.lightGreen,),
                Text("Photo",style: TextStyle(fontSize: 17,color: Colors.black54),)
              ],
            )
            ),
            Container(
              child: VerticalDivider(width: 10,color: Colors.red,thickness: 3,indent:20),
            ),
            TextButton(onPressed: getimage, child: Row(
              children: [
                Icon(Icons.video_call,color: Colors.purple,),
                Text("Room",style: TextStyle(fontSize: 17,color: Colors.black54),)
              ],
            )
            ),
          ],
    );
  }
}
