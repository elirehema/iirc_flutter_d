

import 'dart:async';

import 'package:amala_statistics/screens/index.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), 
    () => Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Image.asset('images/image.png', width: 150, height: 150,),
      ),
    );
  }
  
}