import 'dart:async';
import 'package:facebook_clone_ui_flutter/Maintab.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new MainTab(),
      backgroundColor: Colors.white,
      title: new Text('Facebook By M.Aasif',textScaleFactor: 2,style: TextStyle(color: Colors.blue),),
      image: new Image.network(
          'https://toppng.com/uploads/preview/facebook-logo-vector-11549681702ifmdelo1oi.png',width: 100,height: 100,
      ),
      loadingText: Text("Loading"),
      photoSize: 130.0,
      loaderColor: Colors.blue,
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainTab();
  }
}