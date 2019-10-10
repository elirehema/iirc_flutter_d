

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppFloatingActionButton extends StatelessWidget{
   final VoidCallback onPressed;
  final Widget child;
  final String tooltip;

AppFloatingActionButton(String s, {
  this.tooltip,
  this.onPressed,
  this.child
  
});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
      tooltip: tooltip,
      elevation: 4.0,
      
    );
  }
  
}