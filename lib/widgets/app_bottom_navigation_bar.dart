

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBottomAppBar extends StatelessWidget{
  final Widget child;



  AppBottomAppBar(String s, {
    this.child,

  });


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: child,
      shape: CircularNotchedRectangle(),
      color: Colors.blue[500],
    );
  }
  
}