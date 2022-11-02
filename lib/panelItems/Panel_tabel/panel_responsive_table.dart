
import 'package:es_flutter_component/es_table/es_responsive_table.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';

import 'package:flutter/material.dart';
class PanelResponsiveTable extends StatelessWidget {
  const PanelResponsiveTable({Key? key}) : super(key: key);

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
          child: EsResponsiveTable(),)
    );
  }

  Widget boxShow(Widget widget) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding)),
          color: StructureBuilder.styles!.primaryDarkColor),
      child: widget,
    );
  }
}
