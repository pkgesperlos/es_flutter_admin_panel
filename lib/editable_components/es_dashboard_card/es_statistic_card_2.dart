import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class EsStatisticCard2 extends StatelessWidget {
  String? imagePath;
  String? description;
  String? number;
  String? changePercent;
  bool? hasGrown;

  EsStatisticCard2({
    Key? key,
    this.imagePath,
    this.description,
    this.number,
    this.changePercent,
    this.hasGrown,
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
            Container(
              padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              decoration: BoxDecoration(
                  color: StructureBuilder.styles!.dangerColor().dangerLight,
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h0Padding))),
              child: EsSvgIcon(
                // "packages/es_flutter_component/"

                imagePath ?? "assets/svgs/shoppingcart.svg",
                size: StructureBuilder.dims!.h2IconSize,
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
            ),
            EsVSpacer(
              big: true,
              factor: 5,
            ),
            EsOrdinaryText(
              number ?? "300",
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              big: true,
              factor: 2,
            ),
            EsOrdinaryText(
              description ?? StructureBuilder.configs!.lormTitle,
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              big: true,
              factor: 2,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                hasGrown ?? true
                    ? EsSvgIcon(
                        // "packages/es_flutter_component/"

                        "assets/svgs/arrowup2.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!
                            .successColor()
                            .successRegular,
                      )
                    : EsSvgIcon(
                        // "packages/es_flutter_component/"

                        "assets/svgs/arrowdown2.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!
                            .dangerColor()
                            .dangerRegular,
                      ),
                EsHSpacer(
                  big: true,
                ),
                EsLabelText(
                  changePercent ?? "2.5%",
                  isBold: true,
                  color: hasGrown ?? true
                      ? StructureBuilder.styles!.successColor().successRegular
                      : StructureBuilder.styles!.dangerColor().dangerRegular,
                  align: TextAlign.justify,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
