import 'package:amala_statistics/screens/ChartScreens/BucketingAxisScatterPlotChart.dart';
import 'package:amala_statistics/screens/ChartScreens/index.dart';
import 'package:amala_statistics/screens/index.dart';
import 'package:amala_statistics/widgets/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:amala_statistics/utils/index.dart' as colors;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new MyHomeScreen(title: 'Home Screen'),
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
    BucketingAxisScatterPlotChart.withSampleData(),
  ];
  final List<String> reportTitle = [
    'Clients',
    'Groups',
    'Centers',
    'Users',
    'Employees',
    'Offices',
    'Tellers',
    'Loans',
    'OverDue',
    'Savings',
    'Shares',
    'Reports',
  ];

  final List<int> colorCodes = <int>[600, 500, 400, 300];

  @override
  Widget build(BuildContext context) {
    return new BackdropScaffold(
      title: Text("Backdrop Example"),
      backLayer: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(2.0),
              itemCount: widgetList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 350,
                  color: Colors.white,
                  child: widgetList[index],
                );
              })),
      frontLayer: Scaffold(
        extendBody: true,
        key: _scaffoldKey,
        backgroundColor: colors.backgroundColor,
        body: Center(
          child: new Container(
            color: colors.backgroundColor,
            child: ListView(
              children: <Widget>[
                Card(
                  elevation: 0,
                  color: colors.backgroundColor,
                  child: SizedBox(
                    // Horizontal ListView
                    height: 80,
                    child: ListView.builder(
                      itemCount: reportTitle.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: null,
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,

                          child: ChipWidget(
                            'chip',
                            nameText: reportTitle[index],
                            valueText: '${(2030 * index + 10)}',
                            index: index,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: SizedBox(
                    // Horizontal ListView
                    height: 145,
                    child: ListView.builder(
                      itemCount: reportTitle.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: null,
                          margin: const EdgeInsets.all(0.0),
                          alignment: Alignment.center,

                          child: DataCard(
                            'chip',
                            icon: FontAwesomeIcons.clock,
                            title: '${(2030 * index + 10)/index}',
                            subTitle: 'Expected Speed ',

                          ),

                        );

                      },
                    ),
                  ),

                ),

                Card(
                    elevation: 0.0,
                    child: SizedBox(
                      height: 350,
                      child: BucketingAxisScatterPlotChart.withSampleData(),
                    )),
                Card(
                    elevation: 4.0,
                    child: SizedBox(
                      height: 350,
                      child: NonzeroBoundMeasureAxis.withSampleData(),
                    )),
              ],
            ),
          ),
        ),
        /**
         * Navigation Drawer start here
         * **/
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Amala Statistic\'s',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: ExactAssetImage('images/bac_ground_one.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTileWidget(
                'nav_home',
                title: 'Home',
                subTitle: _lorem,
                icon: Icons.home,
                disabled: false,
                onTap: () {},
              ),
              ListTileWidget(
                'nav_payments',
                title: 'Paymment\'s',
                subTitle: _lorem,
                icon: Icons.attach_money,
                disabled: false,
                onTap: () {
                  Navigator.pushNamed(context, '/payments');
                },
              ),
              ListTileWidget(
                'nav_recent_transaction',
                title: 'Recent Transaction\'s',
                subTitle: _lorem,
                disabled: false,
                icon: Icons.view_list,
                onTap: () {},
              ),
              ListTileWidget(
                'nav_reports',
                title: 'Reports',
                subTitle: _lorem,
                disabled: false,
                icon: Icons.graphic_eq,
                onTap: () {},
              ),
              ListTileWidget(
                'nav_about_us',
                title: 'About Us',
                subTitle: _lorem,
                disabled: false,
                icon: Icons.info,
                onTap: () {},
              ),
              ListTileWidget(
                'nav_help',
                title: 'Help',
                subTitle: _lorem,
                disabled: false,
                icon: Icons.help_outline,
                onTap: () {},
              ),
              ListTileWidget(
                'nav_settings',
                title: 'Settings',
                subTitle: _lorem,
                disabled: false,
                icon: Icons.settings,
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ],
          ),
        ),
        /**
         * Bottom navigation  start here **/
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
              IconButton(
                icon: Icon(Icons.settings_applications, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
        /**
         * Floating Action Button Start here */
        floatingActionButton: AppFloatingActionButton(
            'app_floating_action_button', onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SettingPage()));
        }, tooltip: 'Increment Counter', child: Icon(Icons.settings)),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
      iconPosition: BackdropIconPosition.leading,
      actions: <Widget>[
        BackdropToggleButton(
          icon: AnimatedIcons.list_view,
        ),
      ],
    );
  }
}
