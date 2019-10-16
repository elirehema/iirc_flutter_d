import 'package:flutter/material.dart';
import 'package:amala_statistics/utils/utils.dart';

class HomeInfoCards extends StatefulWidget {
  final VoidCallback onPressed;
  final TextStyle buttonTextStyle;
  final String tittle;
  final String subtitle;
  final Icons icon;
  final int index;

  //passing props in react style
  HomeInfoCards(String s,{
    this.index,
    this.tittle,
    this.subtitle,
    this.icon,
    this.onPressed,
    this.buttonTextStyle,
  });
  @override
  _HomeInfoCardsState createState() => _HomeInfoCardsState();
}

class _HomeInfoCardsState extends State<HomeInfoCards> {

  @override
  Widget build(BuildContext context) {

    Screen size = Screen(MediaQuery.of(context).size);
    return new Container(
      width: null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.settings,
                size: 50,
                color: Colors.red,
              ),
              title: Text(widget.tittle,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
              subtitle:
                  Text('widget.subtitle', style: TextStyle(color: Colors.blue)),
            ),
            Container(
              color: Colors.red[400],
              height: 10.0,

            ),
          ],
        ),

      ),
    );
  }
}

