

import 'package:amala_statistics/widgets/widget_article_description.dart';
import 'package:amala_statistics/widgets/widget_bottom_progressbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String title = 'Title Text';
  String subTitle = 'subtitle';
  Widget testWidget = new MediaQuery(
      data: new MediaQueryData(),
      child: new MaterialApp(
          home: new LinearProgressWidget('_s',
          mDataDate: 'DataDate',
          mTitle: title,
          thumbnail: Text(subTitle),
          viewCount: 6,
          title: title,
          publishDate: '29/09/2019',
          subTitle: subTitle,
          user: "new Random().nextInt(10).toString()",
          descriptioWidget: ArticleDescription(
            title: title,
            subtitle: subTitle,
            author: 'Will Smith',
            publishDate: '29/10/2019',
            readDuration: '20',
            percentage: 0.4,
          ),
        iconData: Icons.exit_to_app,
      )));
  testWidgets('Linear Progress Widget Test', (WidgetTester tester) async {
    
    await tester.pumpWidget(testWidget);

   
  });
}
