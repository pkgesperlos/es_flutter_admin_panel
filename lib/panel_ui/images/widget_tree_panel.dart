

import 'package:es_flutter_admin_panel/panel_ui/app_bar/app_bar_widget.dart';
import 'package:es_flutter_admin_panel/panel_ui/drawer/drawer_page.dart';
import 'package:es_flutter_admin_panel/panel_ui/images/responsive_layout.dart';
import 'package:es_flutter_admin_panel/panel_ui/center_sceen/center_screen.dart';
import 'package:flutter/material.dart';






class WidgetTreePanel extends StatefulWidget {
  @override
  _WidgetTreePanelState createState() => _WidgetTreePanelState();
}

class _WidgetTreePanelState extends State<WidgetTreePanel> {

  @override
  Widget build(BuildContext context) {
    // print(AppLocalizations.of(context)?.localeName);
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
          phone: CenterScreen(),
          tablet: Row(
            children: [
              // Expanded(child: PanelLeftPage()),
              // Expanded(child: PanelCenterPage()),
              Expanded(child: CenterScreen()),
            ],
          ),
          largTablet: Row(
            children: [
              // Expanded(child: PanelLeftPage()),
              // Expanded(child: PanelCenterPage()),
              // Expanded(child: PanelRightPage()),
              Expanded(child: CenterScreen()),
            ],
          ),
          computer: Row(
            children: [

              Expanded(flex: 5, child: DrawerPage()),
              Expanded(flex: 22, child: CenterScreen()),

            ],
          ),
        ),
        drawer: ResponsiveLayot(
          tiny: DrawerPage(),
          phone: DrawerPage(),
          tablet: DrawerPage(),
          largTablet: DrawerPage(),
          computer: Container(),
        ));
  }

}