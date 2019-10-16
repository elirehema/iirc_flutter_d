import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amala_statistics/screens/index.dart';
import 'package:amala_statistics/screens/ChartScreens/index.dart';

class Routes {
   final routes = <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new  HomeScreen(),
      '/LoginScreen': (BuildContext context) => new  Login(),
      '/GaugeScreen': (BuildContext context) => new GroupedStackedWeightPatternBarChart.withSampleData(),
      '/setting': (BuildContext context) => new SettingPage(),
    };

    Routes(){
      runApp(new MaterialApp(
        title: '',
        routes: routes,
        home: new SplashScreen(),
      ));
    }
}