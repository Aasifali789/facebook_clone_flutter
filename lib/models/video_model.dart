import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel(
      {required this.avatarOnPressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.videoPostTitle,
      required this.videoPostLink,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/u6.jpg",
    name: 'Bilawal',
    time: 'Just Now',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        'Raghav and Shakti Love story',
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=h2OuuDZ2pZw"),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/circle.jpeg",
    name: 'Muhammad Aasif',
    time: '1 hour ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        'Raghav and Shakti love story',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=VNbY3SOl514'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/post/mafia.jpeg",
    name: 'Sajjid Junejo',
    time: '58 min ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        'Dil Hai Hindustani 2 | Raghav & Mukti Grand Finale Act',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=eCiA1cu74sI'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/u3.jpg",
    name: 'Arif Azhar',
    time: '28 min ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
    'How to change color of active component using react route in reactjs in hindi',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=IUeggWVbPu4'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "images/user/u10.jpg",
    name: 'Sarmad Sindhi',
    time: '19 min ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
    'Suhna Pahenji Akhiyan Khe Jhal || Sarmad Sindhi || Sindhi Songs💕',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=StbacUb0-Xw'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
