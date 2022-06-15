
import 'package:es_flutter_crm/es_form.dart';
import 'package:es_flutter_crm/images/panelConstants.dart';
import 'package:es_flutter_crm/images/responsive_layout.dart';
import 'package:es_flutter_crm/drawer/center_screen.dart';
import 'package:flutter/material.dart';

import '../app_bar/app_bar_widget.dart';
import '../drawer/drawer_page.dart';


import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

              Expanded(flex: 1, child: DrawerPage()),
              Expanded(flex: 4, child: CenterScreen())
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