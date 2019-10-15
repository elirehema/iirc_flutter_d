import 'package:amala_statistics/screens/ChartScreens/GroupedTargetLineBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/SimpleBarGraph.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedAreaLineChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedBarChart.dart';
import 'package:amala_statistics/screens/ChartScreens/StackedHorizontalBarChart.dart';
import 'package:amala_statistics/screens/Gauge_Chart_Screen.dart';
import 'package:amala_statistics/screens/GroupedStackedWeightPatternBarChart.dart';
import 'package:amala_statistics/widgets/index.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomeScreen(title: 'Home Screen'),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<MyHomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      if (index == 0) {
        Scaffold.of(context).openDrawer(); // This is what I've tried
      } else {}
    });
  }

  static const String _lorem =
      "Lorem ipsum sit de amet constectuer adipiscing elit..";
  final List<Widget> widgetList = <Widget>[
    GroupedStackedWeightPatternBarChart.withSampleData(),
    GaugeChartScreen.withSampleData(),
    SimpleBarChart.withSimpleData(),
    StackedBarChart.withSampleData(),
    GroupedBarTargetLineChart.withSampleData(),
    StackedHorizontalBarChart.withSampleData(),
    StackedAreaLineChart.withSampleData(),
  ];
  final List<String> reportList = [
    'Active Loans',
    'Active Clients',
    'Users',
    'No. of Offices'
  ];

  final List<int> colorCodes = <int>[600, 500, 400, 300];

  @override
  Widget build(BuildContext context) {
    return new BackdropScaffold(
      title: Text("Backdrop Example"),
      backLayer: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: widgetList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 350,
                  color: Colors.blue[index * 100],
                  child: widgetList[index],
                );
              })),
      frontLayer: Scaffold(
        extendBody: true,
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('App Bar'),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
        ),
        body: Center(
          child: new Container(
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      child: AppHomescreenCard(
                        '',
                      ),
                    ),
                    Flexible(
                      child: AppHomescreenCard(
                        '',
                      ),
                    )
                  ],
                ),
                AppHomescreenCard(
                  '',
                ),
                GridView.count(
                  crossAxisCount: 2,
                  physics: ScrollPhysics(), // to disable GridView's scrolling
                  shrinkWrap: true,

                  children: List.generate(reportList.length, (index) {
                    return Center(
                      child: AppHomescreenCard('app_home_bar',
                      index: index,
                      tittle: reportList[index],
                      )
                    );
                  }),
                ),
              ],
            ),
          ),
        ),

        /* CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 150.0,
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                    color: Colors.white,
                    child: AppHomescreenCard('app_home_screen',
                    index: index,
                      tittle: 'Screen',
                      subtitle: 'Subtitle ${{index}}',
                    ),
                    
                    );
              }, childCount: widgetList.length),
            ),
          ],
        ),*/
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
                leading: new Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
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
          child: new Row(
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
            child: Icon(Icons.settings)),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
      iconPosition: BackdropIconPosition.leading,
      actions: <Widget>[
        BackdropToggleButton(
          icon: AnimatedIcons.list_view,
        ),
      ],
    );
    /*return new Scaffold(
      extendBody: true,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
       
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
              leading: new Icon(
                Icons.settings,
                color: Colors.black,
              ),
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
        child: new Row(
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
          child: Icon(Icons.settings)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );*/
  }
}
