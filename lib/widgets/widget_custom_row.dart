import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  final List<Widget> widgetList;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline textBaseline;

  CustomRow(String _s,
      {Key key,
      this.widgetList,
      this.crossAxisAlignment,
      this.mainAxisAlignment,
      this.mainAxisSize,
      this.textDirection,
      this.verticalDirection,
      this.textBaseline})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomRowWidgetState();
}



class _CustomRowWidgetState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: widget.crossAxisAlignment,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        textBaseline: widget.textBaseline,
        textDirection: widget.textDirection,
        children: widget.widgetList);
  }
}
