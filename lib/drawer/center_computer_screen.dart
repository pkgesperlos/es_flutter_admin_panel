
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_text_sample.dart';
import 'package:flutter/material.dart';


class CenterComputerScreen extends StatefulWidget {
  static final GlobalKey<_CenterComputerScreen> globalKey = GlobalKey();
  CenterComputerScreen({Key? key,}) : super(key: globalKey);



  @override
  _CenterComputerScreen createState() => _CenterComputerScreen();
}


class _CenterComputerScreen extends State<CenterComputerScreen> {

  Widget page=PanelTextSample();


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
