

import 'package:amala_statistics/widgets/widget_article_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String title = 'Title Text';
  String subTitle = 'subtitle';
  Widget testWidget = new MediaQuery(
      data: new MediaQueryData(),
      child: new MaterialApp(
          home: new  ArticleDescription(
            title: title,
            subtitle: subTitle,
            author: 'Will Smith',
            publishDate: '29/10/2019',
            readDuration: '20',
            percentage: 0.4,
          ),
      ));
  testWidgets('ArticleDescription Widget Test', (WidgetTester tester) async {
    
    await tester.pumpWidget(testWidget);

   
  });
}
