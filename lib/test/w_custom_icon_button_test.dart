
import 'package:amala_statistics/widgets/index.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  String title = 'Title Text';
  String subTitle = 'subtitle';
  Widget testWidget = new MediaQuery(
      data: new MediaQueryData(),
      child: new MaterialApp(
          home: new  CustomIconButton(
            tooltip: title,
            icon: new Icon(Icons.mobile_screen_share),
            iconsize: 24.0,
            onPressed: null,
            edgeInsetsGeometry: const EdgeInsets.all(2.0),
            alignmentGeometry: Alignment(0.0, 0.0),
          ) ));


  testWidgets('Transaction Widget test', (WidgetTester tester) async {

    // Build Transaction widget.
    await tester.pumpWidget(testWidget);
  
  });
}