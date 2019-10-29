import 'package:amala_statistics/utils/responsive_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  final Colors iconColor;
  final Color backgroundColor;
  final IconData icon;
  final GestureTapCallback onTap;
  final bool disabled;

  const ListTileWidget(
    String s, {
    Key key,
    this.iconColor,
    this.subTitle,
    this.title,
    this.icon,
    this.onTap,
    this.backgroundColor,
    this.disabled,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);

    return new Column(children: <Widget>[
      GestureDetector(
        child: Container(
          key: widget.key,
          color: widget.backgroundColor,
          padding: EdgeInsets.only(
              right: size.getWidthPx(12), left: size.getWidthPx(2)),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  widget.icon,
                  color: Colors.blue,
                ),
                title: Text(widget.title),
                subtitle: Text(widget.subTitle),
                dense: true,
              ),
              Divider(
                height: 8.0,
                color: Colors.teal,
                indent: 8.0,
                endIndent: 8.0,
              ),
            ],
          ),
        ),
        onTap: widget.disabled ? () {} : widget.onTap,
      )
    ]);
  }
}
