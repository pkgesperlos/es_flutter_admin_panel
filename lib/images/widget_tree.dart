import 'package:es_flutter_component/images/responsive_layout.dart';
import 'package:flutter/material.dart';


import '../app_bar/app_bar_widget.dart';
import '../drawer/drawer_page.dart';
import '../panel_center/panel_center_page.dart';
import '../panel_left/Panel_left_page.dart';
import '../panel_right/panel_right_page.dart';

class WidgetTree extends StatefulWidget {
  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: (ResponsiveLayot.isTinyLimit(context) ||
                ResponsiveLayot.isTinyHightLimit(context)
            ? Container()
            : AppBarWidget()),
      ),
      body: ResponsiveLayot(
        tiny: Container(),
        phone: PanelCenterPage(),
        tablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
          ],
        ),
        largTablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(child: PanelRightPage()),
          ],
        ),
        computer: Row(
          children: [
            Expanded(child: DrawerPage()),
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(child: PanelRightPage()),
          ],
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
