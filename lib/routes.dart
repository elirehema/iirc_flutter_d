import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amala_statistics/screens/index.dart';
import 'package:amala_statistics/screens/ChartScreens/index.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'api/post_api_service.dart';

class Routes {
   

    Routes(){
      _setupLoggging();
      runApp(MyApp());
    }

    void _setupLoggging(){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec){
      print('${rec.level.name}:${rec.time}:${rec.message}');
    });
  }

    
}

class MyApp extends StatelessWidget{
  final routes = <String, WidgetBuilder>{
      '/': (BuildContext context) =>   Login(),
      '/HomeScreen': (BuildContext context) => HomeScreen(),
      '/LoginScreen': (BuildContext context) =>   Login(),
      '/GaugeScreen': (BuildContext context) => GroupedStackedWeightPatternBarChart.withSampleData(),
      '/settings': (BuildContext context) => SettingPage(),
      '/payments': (BuildContext context) =>  MyHomePage(title: 'Home Page',),
      '/help': (BuildContext context)=>  HelpScreen(),
      '/route_profile':(BuildContext context)=> UserProfileScreen(),
    };
  @override
  Widget build(BuildContext context) {
    return Provider(
     builder: (_)=> PostApiService.create(),
      dispose: (context, PostApiService service)=> service.client.dispose(),
      child: MaterialApp(
        routes: routes,
        title: '',
        home: SplashScreen(),
      ),
     
    );
  }
  
}