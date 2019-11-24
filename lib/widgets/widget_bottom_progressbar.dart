import 'package:amala_statistics/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearProgressWidget extends StatefulWidget {
  final String mTitle, mDataInfo, mDataDate;
  final String subTitle;
  final IconData iconData;
  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;
  final String publishDate;
  final String readDuration;
  final String author;
  final double linear_percent;
  final Widget descriptioWidget;

  LinearProgressWidget(
    String s, {
    Key key,
    this.iconData,
    this.mTitle,
    this.subTitle,
    this.mDataDate,
    this.mDataInfo,
    this.title,
    this.thumbnail,
    this.user,
    this.viewCount,
    this.author,
    this.publishDate,
    this.readDuration,
    this.linear_percent,
    this.descriptioWidget
  }) : super(key: key);

  State<StatefulWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<LinearProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 100,
        child: Container(
          padding: const EdgeInsets.all(5.0),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 0.8,
                child: Container(
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: Icon(widget.iconData),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: widget.descriptioWidget,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

