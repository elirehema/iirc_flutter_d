import 'package:amala_statistics/utils/responsive_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amala_statistics/utils/index.dart' as colors;


class DataCard extends StatefulWidget{

  final String title;
  final String subTitle;
  final Colors iconColor;
  final Color backgroundColor;
  final IconData icon, textIcon;
  final GestureTapCallback onTap;
  final bool disabled;

  const DataCard(
      String s, {
        Key key,
        this.iconColor,
        this.subTitle,
        this.title,
        this.icon,
        this.textIcon,
        this.onTap,
        this.backgroundColor,
        this.disabled,
      }) : super(key: key);


  @override
  State<StatefulWidget> createState() => _DataCardsWidgetState();

}

class _DataCardsWidgetState extends State<DataCard>{
  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);
    return new   Container(
      width: 130,
      child: Card(
        color: colors.textPrimaryLightColor,
        elevation: 1.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                widget.icon,
                size: 24.0,
                semanticLabel:
                'Text to announce in accessibility modes',
                color: colors.disabledTextColour,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                color: colors.textPrimaryDarkColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(widget.subTitle, style: TextStyle(color: colors.textSecondary54),),
            ),
          ],
        ),
      ),
    );
  }

}