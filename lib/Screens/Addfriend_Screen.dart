import 'package:facebook_clone_ui_flutter/models/friends_model.dart';
import 'package:flutter/material.dart';

class AddFriendsPage extends StatefulWidget {
  AddFriendsPage({Key? key}) : super(key: key);

  @override
  _AddFriendsPageState createState() => _AddFriendsPageState();
}

class _AddFriendsPageState extends State<AddFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Friends'),
        ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find Friends',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
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
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Wrap(
                      spacing: 12,
                      children: [
                        TextButton(
                          onPressed: () => {print('Friend Request Accepted')},
                          child: Text('ADD FRIEND'),
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
                          child: Text('Remove'),
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
      ),
    );
  }
}
