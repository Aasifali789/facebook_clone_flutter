import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: "Sajjid Junejo",
    avatar: "images/post/mafia.jpeg",
    time: "10:20",
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: "Faheem Sahito",
    avatar: "images/user/u1.jpg",
    time: "14:23",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: "Salman Memon",
    avatar: "images/user/u6.jpg",
    time: "23:20",
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: "Bilawal Jatt",
    avatar: "images/user/u3.jpg",
    time: "22:30",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: "Arif Azhar",
    avatar: "images/user/u6.jpg",
    time: "22:30",
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: "Arshad Azhar",
    avatar: "images/user/u8.jpg",
    time: "22:30",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: "Akhtar Jagirani",
    avatar: "images/user/u10.jpg",
    time: "22:30",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: "Asad Abbasi",
    avatar: "images/user/u1.jpg",
    time: "10:20",
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: "Toseef Ahmed",
    avatar: "images/user/u6.jpg",
    time: "10:20",
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: "Sajjid Junejo",
    avatar: "images/user/u10.jpg",
    time: "10:20",
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: "Sajjid Junejo",
    avatar: "images/user/u8.jpg",
    time: "10:20",
    status: MessageModel.statusOnline,
  ),
];
