

import 'package:flutter/material.dart';
import '../widgets/widget_listile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserProfileScreen extends StatelessWidget{
  String lorem = 'A widget test is therefore more comprehensive than a unit test. However, like a unit test, a widget test’s environment is replaced with an implementation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset('images/profile.jpg'),
            ),
            ListTileWidget(
              'custom_listile_widget',
              title: 'Username',
              subTitle: 'Serwagn Samaulin',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("accountBoxOutline"),
            ),
              ListTileWidget(
              'custom_listile_widget',
              title: 'Email address',
              subTitle: 'ipsumlorem@gmail.com',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("emailOutline"),
            ),
               ListTileWidget(
              'custom_listile_widget',
              title: 'Organization',
              subTitle: 'Rebtel Norrlandsgatan',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("viewCompactOutline"),
            ),
               ListTileWidget(
              'custom_listile_widget',
              title: 'Location',
              subTitle: 'Stockholm, Sweden',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("mapMarker"),
            ),
               ListTileWidget(
              'custom_listile_widget',
              title: 'Position',
              subTitle: 'Marketing manager',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("briefcaseAccountOutline"),
            ),
               ListTileWidget(
              'custom_listile_widget',
              title: 'Office',
              subTitle: 'Head Office',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("office"),
            ),
               ListTileWidget(
              'custom_listile_widget',
              title: 'Permissions',
              subTitle: '[view clients, view-loan,view-sums]',
              disabled: false,
              iconColor: Colors.black,
               icon: MdiIcons.fromString("eye"),
            ),
          ],
        )
      ),
    );
  }
  
}