import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: _ArticleDescription(
                    title: widget.title,
                    subtitle: widget.subTitle,
                    author: widget.author,
                    publishDate: widget.publishDate,
                    readDuration: widget.readDuration,
                    percentage: widget.linear_percent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
    this.percentage,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(subtitle),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text(
                        "53.49",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "23.67",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              LinearPercentIndicator(
                lineHeight: 6.0,
                percent: percentage,
                animation: true,
                backgroundColor: Colors.lightGreenAccent,
                progressColor: Colors.deepPurple,
              ),
            ],
          ),
        ),
        /*Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Text(
                '$author',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$publishDate · $readDuration ★',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              LinearPercentIndicator(
                lineHeight: 6.0,
                percent: percentage,
                animation: true,
                backgroundColor: Colors.lightGreenAccent,
                progressColor: Colors.deepPurple,
              ),
            ],
          ),
        ),*/
      ],
    );
  }
}
