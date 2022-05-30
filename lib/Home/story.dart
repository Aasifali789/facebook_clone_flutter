import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0,bottom: 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 5,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              width: 130,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (){print("Clicked");},
                    child: Column(
                      children: [
                        Container(
                          width: 170,
                          height: 140,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft:Radius.circular(10),
                              topRight:Radius.circular(10),
                            ),
                            child:Image(
                              image: AssetImage('images/circle.jpeg'),
                              // fit: BoxFit.cover,
                              width: 500,
                            ) ,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text("Create story",style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),),
                      )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 52,left: 32,
                      child: Icon(Icons.add,size: 60,color: Colors.blue,))
                ],

              ),
            ),
          for(var i=0; i<Stories.length;i++)...[
            Container(
              height: 220,
              width: 130,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: Stories[i].onTap,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(Stories[i].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 8,
                      child: Text(Stories[i].name,style: TextStyle(fontSize: 20,color: Colors.white),))
                ],
              ),
            )
          ]
          ],
        ),
      ),
    );
  }
}
