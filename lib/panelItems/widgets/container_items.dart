
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_information_button.dart';


class ContainerItems extends StatelessWidget {
  Widget widget;
  String title;
  String information;

  ContainerItems({Key? key,required this.widget,required this.title,required this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
        margin: EdgeInsets.symmetric(
            horizontal:StructureBuilder.dims!.h3Padding,
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
          children: [
            Padding(
              padding:
               EdgeInsets.only(bottom: StructureBuilder.dims!.h0Padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EsDottedText(
                      title, size: 15, color: StructureBuilder.styles!.primaryColor,
                    align: TextAlign.start,

                  ),

                  EsInformationButton(
                    dialogeText: information,


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
