
import 'package:facebook_clone_ui_flutter/Screens/home.dart';
import 'package:facebook_clone_ui_flutter/Screens/market_page.dart';
import 'package:facebook_clone_ui_flutter/Screens/message_page.dart';
import 'package:facebook_clone_ui_flutter/Screens/mydrawer.dart';
import 'package:facebook_clone_ui_flutter/Screens/notifications.dart';
import 'package:facebook_clone_ui_flutter/Screens/user_request.dart';
import 'package:facebook_clone_ui_flutter/Screens/videos.dart';
import 'package:facebook_clone_ui_flutter/widgets/animatedtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  Future<bool>_onWillpop() async{
    if(_tabController!.index==0){
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 200),(){
      _tabController?.index=0;
    });
    return _tabController!.index==0;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child:WillPopScope(
          onWillPop:  _onWillpop,
          child: Scaffold(
            body:  NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled)=>[
                SliverAppBar(
                  elevation: 0.0,
                  pinned: true,
                  floating: true,
                  snap: true,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AnimatedText(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            child:
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.search,color: Colors.black,size: 28,)),
                          ),
                          SizedBox(width: 13,),
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            child:
                            IconButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MessagePage()),
                                  );
                                },
                                icon:Badge(
                                  animationType: BadgeAnimationType.fade,
                                  toAnimate: true,
                                  position: BadgePosition.topEnd(top: -12, end: -20),
                                  badgeContent: Text('3',style: TextStyle(color: Colors.white),),
                                  child: Icon(Icons.message_outlined,color: Colors.black,size: 28,),
                                )
                          ),
                          )
                        ]
                      )
                    ],
                  ),
                  centerTitle: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom:  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.blue,
                    indicatorWeight: 5,
                    tabs: [
                       Tab(icon: Icon(Icons.home,color: Colors.black,size: 27,)),
                      Tab(icon:  Badge(
                        animationType: BadgeAnimationType.fade,
                        toAnimate: true,
                        position: BadgePosition.topEnd(top: -6, end: -12),
                        badgeContent: Text('10',style: TextStyle(color: Colors.white,fontSize: 10),),
                        child: Icon(Icons.supervised_user_circle_outlined,color: Colors.black,size: 28,),
                      )),
                      Tab(icon:  Icon(Icons.video_collection_outlined,color: Colors.black,size: 27,)),
                       Tab(icon: Icon(Icons.card_giftcard_outlined,color: Colors.black,size: 27,)),
                       Tab(icon: Badge(
                         animationType: BadgeAnimationType.fade,
                         toAnimate: true,
                         position: BadgePosition.topEnd(top: -6, end: -12),
                         badgeContent: Text('99+',style: TextStyle(color: Colors.white,fontSize: 10),),
                         child: Icon(Icons.notifications_active_outlined,color: Colors.black,size: 28,),
                       )),
                       Tab(icon: Icon(Icons.menu_outlined,color: Colors.black,size: 27,),)
                    ],
                  ),
                )
              ],
              body:  TabBarView(
                controller: _tabController,
                children: [
                  Home(),
                  FriendsPage(),
                  VideoPage(),
                  MarketPage(),
                  NotificationPage(),
                  MenuScreen(),
                ],
              ),
            ),
            ),
          ),
        );
  }
}
