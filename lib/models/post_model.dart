import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
      {required this.avatarOnPressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.postTitle,
      required this.postImage,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'images/circle.jpeg',
    name: 'Muhammad Aasif',
    time: 'Just Now',
    moreOnPressed: () => print('More Clicked'),
    postTitle: 'This is my new profile picture',
    postImage: "images/circle.jpeg",
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/post/mafia.jpeg",
    name: 'Faheem Ahmed',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle:
        'About To day',
    postImage: "images/post/mafia.jpeg",
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/post/mafia.jpeg",
    name: 'Sajjid Junejo',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle:
        'About today while gonig MUET University.',
    postImage: 'images/user/u8.jpg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/circle.jpeg",
    name: 'Muhammad Aasif',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle:
    'Another image with different Look!.',
    postImage: 'images/user/u6.jpg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
