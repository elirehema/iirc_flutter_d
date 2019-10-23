

import 'package:amala_statistics/utils/responsive_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ChipWidget extends StatefulWidget {
  final String nameText;
  final String valueText;
  final int index;

  ChipWidget(String s,{
    this.nameText,
    this.valueText,
    this.index

});

  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);

    // TODO: implement build
    return Badge(
      badgeContent: Text(widget.valueText, style: TextStyle(color: Colors.white),),
      position: BadgePosition.topLeft(top: -8, left: 30),
      shape: BadgeShape.square,
      animationType: BadgeAnimationType.slide,
      child:  Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue[8 * 100],
          child: Text('${widget.nameText[0].toUpperCase()}'),
        ),
        backgroundColor: Colors.blue[900],
        padding: EdgeInsets.all(0),
        label: Text(widget.nameText, style: TextStyle(color: Colors.white)),
        elevation: 2.0,
        shadowColor: Colors.green[800],
      ),
    );
  }

}