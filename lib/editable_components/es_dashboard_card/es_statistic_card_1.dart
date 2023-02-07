import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../../../main.dart';

class EsStatisticCard1 extends StatelessWidget {
  String? imagePath;
  String? description;
  String? number;

  EsStatisticCard1({
    Key? key,
    this.imagePath,
    this.description,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: MyStyle.dashboardCardDecoration,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: StructureBuilder.dims!.h0Padding,
          vertical: StructureBuilder.dims!.h0Padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EsHeader(
                  number ?? "1144",
                ),
                EsHSpacer(
                  big: true,
                ),
                EsSvgIcon(
                  // "packages/es_flutter_component/"

                  imagePath ?? "assets/svgs/shoppingcart.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
              ],
            ),
            EsVSpacer(
              big: true,
              factor: 5,
            ),
            EsOrdinaryText(
              description ?? StructureBuilder.configs!.lormTitle,
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 1,
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
