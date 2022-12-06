

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
    double _width=MediaQuery.of(context).size.width;


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
              Expanded(child: CenterScreen()),
            ],
          ),
          largTablet: Row(
            children: [
              Expanded(child: CenterScreen()),
            ],
          ),
          computer: Row(
            children: [

              Expanded(flex: _sidebarFlex(_width), child: DrawerPage()),
              Expanded(flex: 40, child: CenterScreen()),

            ],
          ),
        ),
        drawer: SizedBox(
          width: 210,
          child: ResponsiveLayot(
            tiny: DrawerPage(),
            phone: DrawerPage(),
            tablet: DrawerPage(),
            largTablet: DrawerPage(),
            computer: Container(),
          ),
        ));
  }

  int _sidebarFlex(double width){
    if(width>1400){return 7;}
    if(width<=1400 && width>=1300){return 8;}
    if(width<=1300 && width>=1200){return 9;}
    if(width<=1200){return 10;}
    else
    return 7;
  }

}