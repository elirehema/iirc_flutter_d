import 'package:amala_statistics/widgets/widget_listile.dart';
import 'package:flutter/material.dart';

class mDrawerLayout extends StatelessWidget {
  static const String _lorem =
      "Lorem ipsum sit de amet constectuer adipiscing elit..";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Amala Statistic\'s',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blue),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: ExactAssetImage('images/bac_ground_one.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTileWidget(
          'nav_home',
          title: 'Home',
          subTitle: _lorem,
          icon: Icons.home,
          disabled: false,
          onTap: () {},
        ),
        ListTileWidget(
          'nav_payments',
          title: 'Paymment\'s',
          subTitle: _lorem,
          icon: Icons.attach_money,
          disabled: false,
          onTap: () {
            Navigator.pushNamed(context, '/payments');
          },
        ),
        ListTileWidget(
          'nav_recent_transaction',
          title: 'Recent Transaction\'s',
          subTitle: _lorem,
          disabled: false,
          icon: Icons.view_list,
          onTap: () {},
        ),
        ListTileWidget(
          'nav_reports',
          title: 'Reports',
          subTitle: _lorem,
          disabled: false,
          icon: Icons.graphic_eq,
          onTap: () {},
        ),
        ListTileWidget(
          'nav_about_us',
          title: 'About Us',
          subTitle: _lorem,
          disabled: false,
          icon: Icons.info,
          onTap: () {},
        ),
        ListTileWidget(
          'nav_help',
          title: 'Help',
          subTitle: _lorem,
          disabled: false,
          icon: Icons.help_outline,
          onTap: () {
            Navigator.pushNamed(context, '/help');
          },
        ),
        ListTileWidget(
          'nav_settings',
          title: 'Settings',
          subTitle: _lorem,
          disabled: false,
          icon: Icons.settings,
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
      ],
    );
  }

}