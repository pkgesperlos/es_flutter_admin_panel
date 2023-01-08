import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_table/es_simple_table.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsComplexPriceCard extends StatelessWidget {
  List<String> titleList;
  List<List<bool>> checkList;
  List<String>? priceList;

  EsComplexPriceCard({
    Key? key,
    required this.titleList,
    required this.checkList,
    this.priceList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _priceList = priceList ??
        List.generate(
          checkList.length,
          (index) => AppLocalizations.of(context)!.free,
        );
    return Container(
      alignment: Alignment.topCenter,
      child: EsSimpleTable(
        headingRowHeight: StructureBuilder.dims!.h0Padding * 4,
        dataRowHeight: StructureBuilder.dims!.h0Padding * 2,
        zebraMode: true,
        headingColor: StructureBuilder.styles!.primaryDarkColor,
        rowsContent: [
          ...List.generate(titleList.length, (index) => [
            EsOrdinaryText(titleList[index]),
            checkList[0][index]
                ? Image.asset(
              "packages/es_flutter_component/assets/images/tick.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            )
                : Image.asset(
              "packages/es_flutter_component/assets/images/cross.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            ),
            checkList[1][index]
                ? Image.asset(
              "packages/es_flutter_component/assets/images/tick.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            )
                : Image.asset(
              "packages/es_flutter_component/assets/images/cross.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            ),
            checkList[2][index]
                ? Image.asset(
              "packages/es_flutter_component/assets/images/tick.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            )
                : Image.asset(
              "packages/es_flutter_component/assets/images/cross.png",
              width:
              StructureBuilder.dims!.h3IconSize,
              height:
              StructureBuilder.dims!.h3IconSize,
            ),
          ]),



        ],
        columnTitle: [
          EsTitle(
            "",
          ),
          ...List.generate(
            checkList.length,
            (index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                EsTitle(_title(index, context),
                    color: StructureBuilder.styles!.t4Color),
                Row(
                  children: [
                    EsLabelText(AppLocalizations.of(context)!.yearly,
                        color: StructureBuilder.styles!.t4Color),
                    EsHSpacer(),
                    EsHeader(_priceList[index],
                        size: StructureBuilder.dims!.h0FontSize * 2,
                        color: StructureBuilder.styles!.primaryLightColor),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _title(int index, BuildContext context) {
    if (index == 0) {
      return AppLocalizations.of(context)!.forstart;
    }
    if (index == 1) {
      return AppLocalizations.of(context)!.primary;
    }
    if (index == 2) {
      return AppLocalizations.of(context)!.golden;
    } else {
      return AppLocalizations.of(context)!.forstart;
    }
  }
}
