import 'package:amala_statistics/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:amala_statistics/utils/index.dart' as colors;

class CircularPercentage extends StatefulWidget {
  final String title, footer;
  final double lineWidth;
  final double radius;
  final double percentage;
  final Colors  colors;
  final double mElevetion;
  const CircularPercentage(
    String s, {
    Key key,
    this.title,
    this.lineWidth,
    this.percentage,
    this.radius,
        this.colors,
        this.mElevetion,
        this.footer,

  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PercentageWidgetState();
}

class _PercentageWidgetState extends State<CircularPercentage> {
  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);


    return new Card(
      elevation: widget.mElevetion,
     child: Container(
         padding: EdgeInsets.only(
          right: size.getWidthPx(12), left: size.getWidthPx(2)),

       margin: const EdgeInsets.all(8.0),
       child:CircularPercentIndicator(
         radius: widget.radius,
         lineWidth: widget.lineWidth,
         percent: widget.percentage,
         animation: true,
         animationDuration: 1000,

         center: new Text(
           widget.title,
           style:
           new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
         ),
         footer: new Text(
           widget.footer,
           style:
           new TextStyle(fontWeight: FontWeight.normal,color: colors.placeHolderColor),
         ),
         circularStrokeCap: CircularStrokeCap.round,
         progressColor: Colors.purple,
       ),
     ),

    );
  }
}
