import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';


class EsStatisticCard2 extends StatelessWidget {
  String? imagePath;
  String? description;
  String? number;
   EsStatisticCard2({Key? key,
   this.imagePath,
   this.description,
   this.number,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: StructureBuilder.styles!.primaryDarkColor,

              offset: Offset(1.5, 0),
            ),
          ],
          color: StructureBuilder.styles!.primaryLightColor,
          borderRadius: BorderRadius.all(Radius.circular(
              StructureBuilder.dims!.h0BorderRadius))),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: StructureBuilder.dims!.h0Padding,
          vertical: StructureBuilder.dims!.h0Padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              decoration: BoxDecoration(
                color: StructureBuilder.styles!.dangerColor().dangerLight,
                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding))

              ),
              child: EsSvgIcon(
                // "packages/es_flutter_component/"

                imagePath?? "assets/svgs/shoppingcart.svg",
                size: StructureBuilder.dims!.h2IconSize,
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
            ),
            EsVSpacer(
              big: true,
              factor: 5,
            ),
            EsOrdinaryText(
              number??"300",
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              big: true,
              factor: 2,
            ),
            EsOrdinaryText(
              description??StructureBuilder.configs!.lormTitle,
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              big: true,
              factor: 2,
            ),
          ],
        ),
      ),
    );
  }
}
