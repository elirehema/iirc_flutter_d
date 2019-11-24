
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ArticleDescription extends StatelessWidget {
  ArticleDescription({
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
    return Material(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                
             child:Row(
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
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Expanded(
              child: LinearPercentIndicator(
                lineHeight: 6.0,
                percent: percentage,
                animation: true,
                backgroundColor: Colors.lightGreenAccent,
                progressColor: Colors.deepPurple,
              ),
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
    ),
    );
  }
}
