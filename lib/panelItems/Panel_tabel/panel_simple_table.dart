
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class PanelSimpleTable extends StatelessWidget {
  const PanelSimpleTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: StructureBuilder.styles!.primaryLightColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding)),
                color: StructureBuilder.styles!.primaryLightColor
          ),
          child:EsSimpleTable(),)
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
