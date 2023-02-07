
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsSimpleTable extends StatefulWidget {
  List<Widget> columnTitle;
  List<List<Widget>> rowsContent;
  BoxDecoration? decoration;
  double? horizontalMargin;
  double? dataRowHeight;
  double? headingRowHeight;
  double? dividerThickness;
  Color? headingColor;
  Color? zebraColor;
  bool? zebraMode;

  EsSimpleTable({
    required this.columnTitle,
    required this.rowsContent,
    this.decoration,
    this.horizontalMargin,
    this.dataRowHeight,
    this.headingRowHeight,
    this.dividerThickness,
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
  double _height=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int _numofRows=widget.rowsContent.length;
    double _headingRowHeight=widget.headingRowHeight??StructureBuilder.dims!.h2IconSize*1.5;
    double _dataRowHeight=widget.dataRowHeight??StructureBuilder.dims!.h2IconSize;
     _height=_headingRowHeight+(_numofRows*_dataRowHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: _height,
      decoration:widget.decoration ??
          BoxDecoration(
            // color: StructureBuilder.styles!.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
          horizontalMargin:widget.horizontalMargin,
              decoration: widget.decoration ??
                  BoxDecoration(
                    // color: StructureBuilder.styles!.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))
                  ),
              dividerThickness:widget.dividerThickness?? 1,
              headingRowHeight:
              widget.headingRowHeight ?? StructureBuilder.dims!.h2IconSize*1.5,
              dataRowHeight:
              widget.dataRowHeight ?? StructureBuilder.dims!.h2IconSize,
              headingRowColor: MaterialStateProperty.resolveWith((states) {
                return widget.headingColor ??
                    StructureBuilder.styles!.primaryLightColor;
              }),

              dataRowColor:MaterialStateProperty.resolveWith((Set states) {
                if(states.contains(MaterialState.selected)){
                  return widget.zebraColor ??
                      StructureBuilder.styles!.primaryColor;

                }
              }) ,
              // dataRowColor: MaterialStateProperty.resolveWith((states) {
              //   return widget.zebraMode??false
              //       ?widget.zebraColor ?? StructureBuilder.styles!.primaryColor
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
        ],
      ),
    );
  }
}
