import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';



class EsProfileTimeLine extends StatelessWidget {

  List<Widget> contentList;
  List<Widget> indicatorList;
  List<double>? tileLenghtList;

  EsProfileTimeLine({Key? key,
    required this.contentList,
    required this.indicatorList,
     this.tileLenghtList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: StructureBuilder.dims!.h0Padding),
        child: Row(
          children: [
            _Timeline1(),

          ],
        ),
      ),
    );
  }
  Widget _Timeline1() {

    return Flexible(
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          connectorTheme: ConnectorThemeData(
            thickness: 1.0,
            color:StructureBuilder.styles!.primaryColor,
          ),
          indicatorTheme: IndicatorThemeData(
            size: StructureBuilder.dims!.h0Padding,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: StructureBuilder.dims!.h0Padding,),
        builder: TimelineTileBuilder.connected(
          contentsBuilder: (_, index) {
            return contentList[index];

          },
          connectorBuilder: (_, index, __) {
            return SolidLineConnector();
          },
          indicatorBuilder: (_, index) {
            return indicatorList[index];

          },
          itemExtentBuilder: (_, index) =>
          tileLenghtList==null
              ?StructureBuilder.dims!.h0Padding*7
              :tileLenghtList![index],
          itemCount: indicatorList.length,
        ),
      ),
    );
  }
}







