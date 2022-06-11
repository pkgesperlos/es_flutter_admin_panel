import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_crm/es_form.dart';


import 'package:flutter/material.dart';

import '../panel_center/panel_center_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CenterComputerScreen extends StatefulWidget {
  static final GlobalKey<_CenterComputerScreen> globalKey = GlobalKey();
  CenterComputerScreen({Key? key,}) : super(key: globalKey);



  @override
  _CenterComputerScreen createState() => _CenterComputerScreen();
}


class _CenterComputerScreen extends State<CenterComputerScreen> {

  Widget page=PanelCenterPage();


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
