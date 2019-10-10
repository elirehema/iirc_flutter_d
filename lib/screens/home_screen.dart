import 'package:amala_statistics/screens/ChartScreens/GroupedTargetLineBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/SimpleBarGraph.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedAreaLineChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedHorizontalBarChart.dart';
import 'package:amala_statistics/screens/Gauge_Chart_Screen.dart';
import 'package:amala_statistics/screens/GroupedStackedWeightPatternBarChart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    )

        /*new ListView.separated(
          itemCount: widgetList.length,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              color: Colors.amber[colorCodes[index]],
              child: widgetList[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        )*/

        );
  }
}
