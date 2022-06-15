
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_chart.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_text_sample.dart';
import 'package:flutter/material.dart';


class CenterScreen extends StatefulWidget {
  static final GlobalKey<_CenterScreen> globalKey = GlobalKey();
  CenterScreen({Key? key,}) : super(key: globalKey);



  @override
  _CenterScreen createState() => _CenterScreen();
}


class _CenterScreen extends State<CenterScreen> {

  Widget page=PanelChart();


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
