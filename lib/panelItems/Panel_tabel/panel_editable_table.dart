
import 'package:es_flutter_component/es_table/es_editable_table.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';

import 'package:flutter/material.dart';

class PanelEditableTable extends StatelessWidget {
  const PanelEditableTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;

    return Material(
        color: StructureBuilder.styles!.primaryLightColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding)),
                color: StructureBuilder.styles!.primaryLightColor
          ),
          child: EsEditableTable(),)
    );
  }

  Widget boxShow(Widget widget) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical:StructureBuilder.dims!.h0Padding * 5,
      ),
      margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding*2)),
          color: StructureBuilder.styles!.primaryLightColor),
      child: widget,
    );
  }
}
