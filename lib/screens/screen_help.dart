

import 'package:flutter/material.dart';
import '../items_widget/read_more_text.dart';

class HelpScreen extends StatelessWidget{
  final String lorem = 'Lorem ipsum dolor sit amet,'+
  'consectetur adipiscing elit, sed do eiusmod tempor incididunt '+
  'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis '+
  'nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'+
  ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur'+
   'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est'+
    'laborum';
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Read More Text',
        style: TextStyle(color: Colors.white),
      )),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _createChildren(lorem)
          ),
        ),
      ),
    );
  }
  
}

List<int> someList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<Widget> _createChildren( String text) {
    return new List<Widget>.generate(10, (int index) {
      return Column(
        children: <Widget>[
           Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  text,
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Less',
                ),
              ),
               Divider(
                color: const Color(0xFF167F67),
              ),
        ],
      );
    });
  }