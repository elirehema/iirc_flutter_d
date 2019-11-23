import 'package:amala_statistics/widgets/widget_custom_row.dart';
import 'package:flutter/material.dart';
import '../screens/index.dart';
import '../widgets/widget_custom_row.dart';
import '../widgets/widget_custom_icon_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ItemsAppBarHome extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ItemsAppBarHome(String s, {
    Key key,
    this.scaffoldKey,
  }): super(key: key);

     @override
  State<StatefulWidget> createState() => _ItemsAppBarHomeWidgetState();
}
class _ItemsAppBarHomeWidgetState extends State<ItemsAppBarHome> {
  

  @override
  Widget build(BuildContext context ) {
    return CustomRow(
      'custom_row',
            mainAxisSize: MainAxisSize.max, 
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            widgetList: <Widget>[
              CustomIconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                iconsize: 24.0,
                edgeInsetsGeometry: const EdgeInsets.all(2.0),
                alignmentGeometry: Alignment.center,
                onPressed: () {
                  widget.scaffoldKey.currentState.openDrawer();
                },
              ),
              CustomIconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                iconsize: 24.0,
                edgeInsetsGeometry: const EdgeInsets.all(2.0),
                alignmentGeometry: Alignment.center,
                onPressed: () {
                  Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SettingPage()));
                },
              ),
               CustomIconButton(
                icon: Icon(MdiIcons.fromString("accountBoxOutline"), color: Colors.white),
                iconsize: 24.0,
                edgeInsetsGeometry: const EdgeInsets.all(2.0),
                alignmentGeometry: Alignment.center,
                onPressed: () {
                  Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new UserProfileScreen()));
                },
              ),
              CustomIconButton(
                icon: Icon(MdiIcons.fromString("alertCircleOutline"), color: Colors.white),
                iconsize: 24.0,
                edgeInsetsGeometry: const EdgeInsets.all(2.0),
                alignmentGeometry: Alignment.center,
                onPressed: () {
                    Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new HelpScreen()));
                
                },
              ),
             
            ],
           
          );
  }
  
}