import 'package:flutter/material.dart';

class StoryModel{
  final VoidCallback onTap;
  final String image;
  final String name;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.name
  });
}

List<StoryModel>Stories = [
  StoryModel(
       name: "Sajjid Junejo",
      onTap: (){print("Friend One clicked");},
      image: "images/post/mafia.jpeg",
      ),
  StoryModel(
    name: "Faheem",
    onTap: (){print("Friend Two clicked");},
    image: "images/story/s4.jpg",
  ),
  StoryModel(
    name: "Bilawal Jutt",
    onTap: (){print("Friend three clicked");},
    image: "images/user/u1.jpg",
  ),
  StoryModel(
    name: "Aasif",
    onTap: (){print("Friend four clicked");},
    image: "images/circle.jpeg",
  ),
  StoryModel(
    name: "Arif",
    onTap: (){print("Friend five clicked");},
    image: "images/user/u6.jpg",
  ),
];