import 'package:es_flutter_component/components/es_button/es_information_button.dart';
import 'package:es_flutter_component/components/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class ContainerItems extends StatelessWidget {
  Widget widget;
  String title;
  String information;
  GlobalKey? informationKey;

  ContainerItems(
      {Key? key,
      required this.widget,
      required this.title,
      required this.information,
      this.informationKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding/2,
        ),
        decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryLightColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius * 2)),
          boxShadow: [
            BoxShadow(
              color: StructureBuilder.styles!.primaryDarkColor,
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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // alignment: WrapAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsDottedText(
                          title,
                          // size: 10, color: StructureBuilder.styles!.primaryDarkColor,
                          align: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: EsInformationButton(
                      key: informationKey,
                      dialogeText: information,
                    ),
                  ),
                ],
              ),
            ),
           EsVSpacer(),
            widget,

          ],
        ),
      ),
    );
  }
}
