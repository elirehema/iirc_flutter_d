import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../items_widget/items_appbar_home.dart';


class AppBottomAppBar extends StatefulWidget{
    final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget child;
  final Color color, iconColor;
  final Clip clipbehaviour;
  final double notchMargin;
  final double elevetion;
  

  const AppBottomAppBar(String s, {
    Key key,
    this.child,
    this.color,
    this.iconColor,
    this.clipbehaviour,
    this.notchMargin,
    this.elevetion,
     this.scaffoldKey
    
  }):super(key: key);

    @override
  State<StatefulWidget> createState() => _BottomAppBarWidgetState();

}
class _BottomAppBarWidgetState extends State<AppBottomAppBar>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomAppBar(
   
     child: CBottomNavigationBar(
      'string_this',
      iconColor: widget.iconColor,
      scaffoldKey: widget.scaffoldKey
      ),
      shape: CircularNotchedRectangle(),
      color:Colors.white,
      clipBehavior: Clip.antiAlias,
      notchMargin: 2.0,
      elevation: widget.elevetion,
      
      
      
    );
    
  }
  
}