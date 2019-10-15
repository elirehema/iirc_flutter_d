import 'package:flutter/material.dart';

class AppHomescreenCard extends StatelessWidget {
  final VoidCallback onPressed;
  final TextStyle buttonTextStyle;
  final String tittle;
  final String subtitle;
  final Icons icon;
  final int index;

  //passing props in react style
  AppHomescreenCard(
    String s, {
    this.index,
    this.tittle,
    this.subtitle,
    this.icon,
    this.onPressed,
    this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.settings,
                size: 50,
                color: Colors.red,
              ),
              title: Text('Total Clients',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
              subtitle:
                  Text('20,230,000', style: TextStyle(color: Colors.blue)),
            ),
            Container(
              color: Colors.red[400],
              height: 10.0,
             /* child: ButtonTheme.bar(
                textTheme: ButtonTextTheme.accent,
                buttonColor: Colors.greenAccent,
                child: ButtonBar(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          child: const Text('Edit',
                              style: TextStyle(color: Colors.green)),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.green)),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}
