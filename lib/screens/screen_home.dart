import 'package:amala_statistics/screens/ChartScreens/BucketingAxisScatterPlotChart.dart';
import 'package:amala_statistics/screens/ChartScreens/index.dart';
import 'package:amala_statistics/screens/index.dart';
import 'package:amala_statistics/widgets/index.dart';
import 'package:amala_statistics/widgets/widget_custom_row.dart';
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
      title: Text("Amala Statistcis"),
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
            child: CustomPageSelectorExample(
              childWidgets: <Widget>[
                CustomRow('_s',
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                widgetList: <Widget>[
                  Expanded(
                   child: Container(
                  child: ListView.builder(
                    itemCount: reportTitle.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        width: null,
                        margin: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        child: DataCard(
                          'chip',
                          icon: FontAwesomeIcons.circleNotch,
                          title: '${(2030 * index + 10) / index}',
                          subTitle: 'Expected Speed ',
                        ),
                      );
                    },
                  ),
                ),
                ),
                Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: reportTitle.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        width: null,
                        margin: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        child: CircularPercentage(
                          'circular_percentage',
                          percentage: 0.0833 * index,
                          title: '${0.5 * index} %',
                          radius: 100.0,
                          lineWidth: 13.0,
                          footer: 'Expected Sales',
                        ),
                      );
                    },
                  ),
                ),),
                ],),
                 Container(
                  height: 300,
                  color: colors.backgroundColor,
                  child: ListView.builder(
                      itemCount: reportTitle.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                            width: null,
                            margin: const EdgeInsets.all(0.0),
                            alignment: Alignment.center,
                            child: Card(
                              elevation: 0.5,
                              child: Transactions(
                                'transaction_widget',
                                mDataDate: 'March $index 2019',
                                mDataInfo: '-53.49',
                                mTitle: 'Sony PlayStation ',
                                subTitle: 'FIFA 2022 Game',
                              ),
                            ));
                      }),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.all(10.0),
                    children: <Widget>[
                      LinearProgressWidget(
                        '',
                        iconData: FontAwesomeIcons.user,
                        linearPercent: 0.5,
                        title: 'Flutter 1.0 Launch',
                        subTitle: 'Flutter continues to its horizons.',
                        author: 'Dash',
                        publishDate: 'Dec 28',
                        readDuration: '5 mins',
                      ),
                      LinearProgressWidget(
                        '',
                        iconData: FontAwesomeIcons.circleNotch,
                        linearPercent: 0.8,
                        title: 'Flutter 1.2 release ',
                        subTitle: 'Flutter once  updates.',
                        author: 'Flutter',
                        publishDate: 'Feb 26',
                        readDuration: '12 mins',
                      ),
                    ],
                  ),
                ),
                ScreenUserPosts(),
              ],
            )
          ),
        ),
        /**
         * Navigation Drawer start here
         * **/
        drawer: Drawer(
          child: mDrawerLayout(),
        ),
        /**
         * Bottom navigation  start here **/
        bottomNavigationBar: AppBottomAppBar(
          'floating_action_button',
          key: UniqueKey(),
          color: Colors.blueGrey[100],
          notchMargin: 2.0,
          elevetion: 0.0,
          iconColor: Colors.blueGrey,
          scaffoldKey: _scaffoldKey,
        ),

        /**
         * Floating Action Button Start here *
        floatingActionButton: AppFloatingActionButton(
            'app_floating_action_button', onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SettingPage()));
        }, tooltip: 'Increment Counter', child: Icon(Icons.settings)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        **/

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
/** 

 ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  // Horizontal ListView
                  height: 65,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: ListView.builder(
                    itemCount: reportTitle.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: null,
                        margin: const EdgeInsets.only(left: 3.0),
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
                Container(
                  // Horizontal ListView
                  height: 118,

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
                          icon: FontAwesomeIcons.circleNotch,
                          title: '${(2030 * index + 10) / index}',
                          subTitle: 'Expected Speed ',
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  // Horizontal ListView
                  height: 150,
                  child: ListView.builder(
                    itemCount: reportTitle.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: null,
                        margin: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        child: CircularPercentage(
                          'circular_percentage',
                          percentage: 0.0833 * index,
                          title: '${0.5 * index} %',
                          radius: 100.0,
                          lineWidth: 13.0,
                          footer: 'Expected Sales',
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 300,
                  color: colors.backgroundColor,
                  child: ListView.builder(
                      itemCount: reportTitle.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                            width: null,
                            margin: const EdgeInsets.all(0.0),
                            alignment: Alignment.center,
                            child: Card(
                              elevation: 0.5,
                              child: mTransactions(
                                'transaction_widget',
                                mDataDate: 'March $index 2019',
                                mDataInfo: '-53.49',
                                mTitle: 'Sony PlayStation ',
                                subTitle: 'FIFA 2022 Game',
                              ),
                            ));
                      }),
                ),
                Card(
                    elevation: 0.0,
                    child: SizedBox(
                      height: 350,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Positioned(
                            top: 10,
                            child: Card(
                              elevation: 4,
                              color: Color.fromARGB(255, 0, 0, 255),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 200,
                                height: 300,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            child: Card(
                              elevation: 8,
                              color: Color.fromARGB(255, 0, 255, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 220,
                                height: 300,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            child: Card(
                              elevation: 12,
                              color: Color.fromARGB(255, 200, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 240,
                                height: 300,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.all(10.0),
                    children: <Widget>[
                      LinearProgressWidget(
                        '',
                        iconData: FontAwesomeIcons.user,
                        linear_percent: 0.5,
                        title: 'Flutter 1.0 Launch',
                        subTitle: 'Flutter continues to its horizons.',
                        author: 'Dash',
                        publishDate: 'Dec 28',
                        readDuration: '5 mins',
                      ),
                      LinearProgressWidget(
                        '',
                        iconData: FontAwesomeIcons.circleNotch,
                        linear_percent: 0.8,
                        title: 'Flutter 1.2 release ',
                        subTitle: 'Flutter once  updates.',
                        author: 'Flutter',
                        publishDate: 'Feb 26',
                        readDuration: '12 mins',
                      ),
                    ],
                  ),
                ),
              ],
            ),

            **/