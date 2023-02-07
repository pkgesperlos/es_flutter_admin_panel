
import 'package:flutter/material.dart';

import '../../panel_items/panel_chart_sample.dart';
import '../../panel_items/panel_dashboard_sample.dart';



class CenterScreen extends StatefulWidget {
  static final GlobalKey<_CenterScreen> globalKey = GlobalKey();

  CenterScreen({Key? key,}) : super(key: globalKey);



  @override
  _CenterScreen createState() => _CenterScreen();
}


class _CenterScreen extends State<CenterScreen> {

  Widget page=PanelDashboardSample();

//function for change page by global key in drawer page
 changePage(currentPage){
   setState(() {
     page=currentPage;
   });
 }


  @override
  Widget build(BuildContext context) {
    return page;
  }




}
