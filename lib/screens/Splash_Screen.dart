

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  startTime() async {
    var _duration = new Duration(seconds: 8);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
  Navigator.of(context).pushReplacementNamed('/HomeScreen');
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body: new Center(
        child: new Image.asset('images/icon_two.png', width: 150, height: 150,),
      ),
    );
  }
  @override
  void initState(){
    super.initState();
    startTime();
  }
  
}