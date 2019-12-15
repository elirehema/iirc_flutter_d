import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String tooltip;
  final Widget icon;
  final Color color, focusColor,highlightColor, hoverColor, splashColor, disabledColor;
  final FocusNode focusNode;
  final bool autofocus;

  const CustomIconButton({
    Key key,
    this.onPressed,
    this.tooltip,
    this.icon,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.disabledColor,
    this.focusNode,
    this.autofocus,
    this.highlightColor,
    this.color,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomIconButtonWidgetState();
}

class _CustomIconButtonWidgetState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
      icon: widget.icon,
      highlightColor: widget.highlightColor,
      tooltip: widget.tooltip,
      onPressed: widget.onPressed,
      color: widget.color,
      hoverColor: widget.hoverColor,
      splashColor: widget.splashColor,
      disabledColor: widget.disabledColor,
      focusColor: widget.focusColor,
    ),

    );
  }
}
