import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsSimpleTable extends StatefulWidget {
  List<Widget> columnTitle;
  List<List<Widget>> rowsContent;
  BoxDecoration? decoration;
  double? dataRowHeight;
  Color? headingColor;
  Color? zebraColor;
  bool? zebraMode;

  EsSimpleTable({
    required this.columnTitle,
    required this.rowsContent,
    this.decoration,
    this.dataRowHeight,
    this.headingColor,
    this.zebraColor,
    this.zebraMode,
  });

  @override
  State<StatefulWidget> createState() {
    return _EsSimpleTable();
  }
}

class _EsSimpleTable extends State<EsSimpleTable> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      DataTable(
          decoration: widget.decoration ??
              BoxDecoration(
                  // color: StructureBuilder.styles!.primaryDarkColor,
                  // border: Border.all(color: StructureBuilder.styles!.primaryColor )
                  ),
          dividerThickness: 1,

          dataRowHeight:
              widget.dataRowHeight ?? StructureBuilder.dims!.h2IconSize,
          headingRowColor: MaterialStateProperty.resolveWith((states) {
            return widget.headingColor ??
                StructureBuilder.styles!.primaryLightColor;
          }),
          dataRowColor:MaterialStateProperty.resolveWith((Set states) {
     if(states.contains(MaterialState.selected)){
       return widget.zebraColor ??
           StructureBuilder.styles!.primaryDarkColor;

     }
    }) ,
          // dataRowColor: MaterialStateProperty.resolveWith((states) {
          //   return widget.zebraMode??false
          //       ?widget.zebraColor ?? StructureBuilder.styles!.primaryDarkColor
          //       :null;
          // }),
          columns: List.generate(
            widget.columnTitle.length,
            (index) => DataColumn(label: widget.columnTitle[index]),
          ),
          rows: List.generate(
            widget.rowsContent.length,
            (indext) => DataRow(
              selected: widget.zebraMode??false
                  ?indext % 2 == 0 ? false : true
                  :false,
              cells: List.generate(widget.columnTitle.length,
                  (index) => DataCell(widget.rowsContent[indext][index])),
            ),
          )),
    ]);
  }
}
