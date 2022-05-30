class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: "Sajjid Junejo",
    avatar: "images/post/mafia.jpeg",
    time: "9 min ago",
    description: "Reacted to your profile picture",
  ),
  NotificationModel(
    name: "Bilawal Jatt",
    avatar: "images/user/u6.jpg",
    time: "50 min ago",
    description: "Sent friend request",
  ),
  NotificationModel(
    name: "Faheem Sahito",
    avatar: "images/user/u8.jpg",
    time: "1 hour ago",
    description: "like Your Video",
  ),
  NotificationModel(
    name: "Sajjid Junejo",
    avatar: "images/post/mafia.jpeg",
    time: "20/04/2021",
    description: "Shared Your Video",
  ),
  NotificationModel(
    name: "Arif Azhar",
    avatar: "images/user/u10.jpg",
    time: "20/04/2021",
    description: "Added a Story",
  ),
  NotificationModel(
    name: "Arif Azhar",
    avatar: "images/user/u10.jpg",
    time: "20/04/2021",
    description: "like Your Profile Picture",
  ),
  NotificationModel(
    name: "Sajjid Junejo",
    avatar: "images/user/u1.jpg",
    time: "20/04/2021",
    description: "Updated his Profile",
  ),
];
