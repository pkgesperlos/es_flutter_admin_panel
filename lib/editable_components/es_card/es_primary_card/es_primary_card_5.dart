import 'package:es_flutter_component/components/es_group_list/es_group_list.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../main.dart';


class EsPrimaryCard5 extends StatelessWidget {


  List<String>? stringList;
  // =List.generate(10, (index) => AppLocalizations.of(context)!.item+(index+1).toString(),);

   EsPrimaryCard5({Key? key,


   this.stringList,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _stringList=stringList??List.generate(10,
          (index) => AppLocalizations.of(context)!.item+(index+1).toString(),);

    List<Widget> _widgetList=List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          _stringList[index],
          align: TextAlign.start,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });

    return Container(
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(
              StructureBuilder.dims!.h0BorderRadius))),
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      child: EsGroupList(widgetList: _widgetList,)
    );
  }
}
