import 'package:es_flutter_admin_panel/panel_ui/app_bar/app_bar_widget.dart';
import 'package:es_flutter_admin_panel/panel_ui/drawer/drawer_page.dart';
import 'package:es_flutter_admin_panel/panel_ui/structure_images/responsive_layout.dart';
import 'package:flutter/material.dart';

class RoutMaker extends StatelessWidget {

  Widget child;
  RoutMaker({Key? key, required this.child, });



  @override
  Widget build(BuildContext context) {

    double _width=MediaQuery.of(context).size.width;

Widget _drawer=DrawerPage();
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
          phone: child ,
          tablet: Row(
            children: [
              Expanded(child: child ,),
            ],
          ),
          largTablet: Row(
            children: [
              Expanded(child: child ,),
            ],
          ),
          computer: Row(
            children: [

              Expanded(flex: _sidebarFlex(_width),
                  child: _drawer,
                // child: _widget??Container()
                  // child: drawerPageState!.widget??Container()
              ),
              Expanded(flex: 40, child: child ,),

            ],
          ),
        ),
        drawer: SizedBox(
          width: 210,
          child: ResponsiveLayot(
            tiny: _drawer,
            phone: _drawer,
            tablet: _drawer,
            largTablet: _drawer,
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


