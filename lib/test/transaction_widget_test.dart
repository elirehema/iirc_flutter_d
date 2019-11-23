// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:amala_statistics/widgets/widget_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
String title = 'Transaction Widget';
String subTitle = 'Transaction subtitle';
  Widget testWidget = new MediaQuery(
      data: new MediaQueryData(),
      child: new MaterialApp(home: new Transactions('s', 
       mDataInfo: 'Date',
    mTitle: title,
    subTitle: subTitle,
    iconData: Icons.event_note,
    key: UniqueKey(),))
);
  testWidgets('Transaction Widget test', (WidgetTester tester) async {
    // Build Transaction widget.
    await tester.pumpWidget(testWidget);

    // Find a widget that displays the letter 'H'.
  expect(find.text(title), findsOneWidget);
  expect(find.text(subTitle), findsOneWidget);
  
  });
}
