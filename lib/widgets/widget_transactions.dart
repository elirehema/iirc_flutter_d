import 'package:amala_statistics/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Transactions extends StatefulWidget {
  final String mTitle, mDataInfo, mDataDate;
  final String subTitle;
  final IconData iconData;

  const Transactions(
    String s, {
    Key key,
    this.iconData,
    @required this.mTitle,
    this.subTitle,
    this.mDataDate,
    this.mDataInfo,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(children: <Widget>[
          Expanded(
            flex: 3,
            child: ListTile(
              leading: new CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: new Icon(
                  MdiIcons.chartBarStacked,
                  color: Colors.pinkAccent,
                ),
              ),
              title: Text(
                widget.mTitle ?? '',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(widget.subTitle ?? ''),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListTile(
              title: Text(
                widget.mDataInfo ?? '',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                widget.mDataDate ?? '',
                textAlign: TextAlign.end,
              ),
            ),
          )
        ])),
    );
  }
}
