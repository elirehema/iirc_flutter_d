
import 'package:amala_statistics/screens/GroupedStackedWeightPatternBarChart.dart';
import 'package:amala_statistics/screens/Home_Screen.dart';
import 'package:amala_statistics/screens/Login_Screen.dart';
import 'package:amala_statistics/screens/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => HomeScreen(),
      '/LoginScreen': (BuildContext context) => LoginScreen(),
      '/GaugeScreen': (BuildContext context) => GroupedStackedWeightPatternBarChart.withSampleData()
    },
  ));
}