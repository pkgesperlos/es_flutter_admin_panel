import 'package:es_flutter_admin_panel/app_bar/app_bar_widget.dart';
import 'package:es_flutter_admin_panel/center_sceen/center_screen.dart';
import 'package:es_flutter_admin_panel/images/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'drawer/drawer_page.dart';

class MyDrawer extends StatelessWidget {
  List<Map>? routes;
  Widget? child;

  MyDrawer({this.routes, this.child});

  @override
  Widget build(BuildContext context) {
    routes ??= Data.routes();

    return Material(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: (ResponsiveLayot.isTinyLimit(context) ||
                    ResponsiveLayot.isTinyHightLimit(context)
                ? Container()
                : AppBarWidget()),
          ),
          // body: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Container(
          //         // height: 200,
          //         // color: Colors.blue,
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             for (Map item in routes as List<Map>)
          //               InkWell(
          //                 onTap: () {
          //                   Navigator.pushNamed(context, item['routeName']);
          //                 },
          //                 child: Text(item['routeTitle']),
          //               ),
          //           ],
          //         ),
          //       ),
          //       child as Widget
          //     ],
          //   ),
          // ),
          body: ResponsiveLayot(
            tiny: Container(),
            phone: CenterScreen(),
            tablet: Row(
              children: [
                // Expanded(child: PanelLeftPage()),
                // Expanded(child: PanelCenterPage()),
                Expanded(child: child as Widget),
              ],
            ),
            largTablet: child as Widget,
            computer: Row(
              children: [

                Expanded(flex: 1, child: DrawerPage()),
                Expanded(flex: 5, child: child as Widget),

              ],
            ),
          ),
          drawer: ResponsiveLayot(
            tiny: DrawerPage(),
            phone: DrawerPage(),
            tablet: DrawerPage(),
            largTablet: DrawerPage(),
            computer: Container(),
          )),

      // child: Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       color: Colors.blue,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           for(Map item in routes as List<Map>)
      //             InkWell(
      //               onTap: (){
      //                 Navigator.pushNamed(context, item['routeName']);
      //               },
      //               child: Text(item['routeTitle']),
      //             ),
      //
      //
      //         ],
      //       ),
      //     ),
      //     child as Widget
      //
      //   ],
      // ),
    );
  }
}

class Data {
  static List<Map> routes() {
    return [
      {"routeName": "/chart", "routeTitle": "chart"},
      {"routeName": "/form", "routeTitle": "dialog"},
      {"routeName": "/progressbar", "routeTitle": "progressbar"},
    ];
  }
}
