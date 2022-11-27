

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_information_button.dart';
import 'es_text/es_dotted_text.dart';


class ContainerItems extends StatelessWidget {
  Widget widget;
  String title;
  String information;
  GlobalKey? informationKey;

  ContainerItems({Key? key,required this.widget,required this.title,required this.information,this.informationKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
        margin: EdgeInsets.symmetric(
            vertical:StructureBuilder.dims!.h0Padding,
        ),
        decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryLightColor,
          borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius*2)),
          boxShadow: [
            BoxShadow(
              color: StructureBuilder.styles!.primaryColor,
              // blurRadius: 2.0,
              offset: Offset(-2, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
               EdgeInsets.only(bottom: StructureBuilder.dims!.h0Padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // alignment: WrapAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex:10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsDottedText(
                            title,
                          // size: 10, color: StructureBuilder.styles!.primaryColor,
                          align: TextAlign.start,

                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex:1,
                    child: EsInformationButton(
                      key: informationKey,
                      dialogeText: information,


                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: StructureBuilder.dims!.h0Padding,
            ),
            widget,
            SizedBox(
              height: StructureBuilder.dims!.h0Padding,
            ),
          ],
        ),
      ),
    );
  }

}
