import 'package:amala_statistics/screens/ChartScreens/GroupedTargetLineBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/SimpleBarGraph.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedAreaLineChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedHorizontalBarChart.dart';
import 'package:amala_statistics/screens/Gauge_Chart_Screen.dart';
import 'package:amala_statistics/screens/GroupedStackedWeightPatternBarChart.dart';
import 'package:amala_statistics/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String _lorem ="Lorem ipsum sit de amet constectuer adipiscing elit..";
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final List<Widget> widgetList = <Widget>[
    GroupedStackedWeightPatternBarChart.withSampleData(),
    GaugeChartScreen.withSampleData(),
    SimpleBarChart.withSimpleData(),
    StackedBarChart.withSampleData(),
    GroupedBarTargetLineChart.withSampleData(),
    StackedHorizontalBarChart.withSampleData(),
    StackedAreaLineChart.withSampleData(),
  ];

  final List<int> colorCodes = <int>[600, 500, 400, 300];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      extendBody: true,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.topCenter,
                  height: 245.0,
                  color: Colors.amber[100 * (index % 9)],
                  child: widgetList[index],
                );
              },
              childCount: widgetList.length,
            ),
          ),
          /*SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index){
          return Container(
            alignment: Alignment.center,
            color: Colors.amber[100 * index],
            child:  widgetList[index],
          );
        },
        childCount: widgetList.length
      ),
    ),*/
          SliverFixedExtentList(
            itemExtent: 330.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[900],
                  child: new Card(
                    color: Colors.amber[index * 100],
                    child: widgetList[index],
                  ));
            }, childCount: widgetList.length),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Flutter Intro',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white70),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: ExactAssetImage('images/icon_three.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
           
         
            Divider(
              height: 8.0,
              color: Colors.teal,
              indent: 8.0,
              endIndent: 8.0,
            ),
            ListTile(
              leading: new Icon(Icons.settings,color: Colors.black,),
              title: Text('Settings'),
              subtitle: Text(_lorem),
              dense: true,
              onTap: () {
                Navigator.pushNamed(context, '/inputs');
              },
            
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomAppBar(
        'floating_action_button',
        child:new Row(
        
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
               _scaffoldKey.currentState.openDrawer();
            },
          ),
         
        ],
      ),
      
        
      
      ),
      floatingActionButton: AppFloatingActionButton(
        'app_floating_action_button',
          onPressed: null,
          tooltip: 'Increment Counter',
          child: Icon(Icons.settings)
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    
    );
  }
}
