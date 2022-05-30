import 'package:facebook_clone_ui_flutter/Screens/Addfriend_Screen.dart';
import 'package:facebook_clone_ui_flutter/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 05.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friends Request',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      icon: Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddFriendsPage()),
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendsData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(friendsData[i].avatar),
                  ),
                  title: Text(
                    friendsData[i].name,
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      TextButton(
                        onPressed: () => {print('Friend Request Accepted')},
                        child: Text('Accept'),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 5),
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      TextButton(
                        onPressed: () => {print('Friend Removed')},
                        child: Text('Delete'),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 5),
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Open Clicked User Profile');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => UserProfile()));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
