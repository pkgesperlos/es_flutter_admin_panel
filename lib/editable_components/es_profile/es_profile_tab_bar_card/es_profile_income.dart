import 'dart:math';

import 'package:es_flutter_components/components/es_table/es_simple_table.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsProfileIncome extends StatelessWidget {
  List<List<String>>? contentList;

  EsProfileIncome({
    Key? key,
    this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> _contentList = contentList ??
        [
          ...List.generate(10, (index) {
            return [
              ...List.generate(3, (index2) {
                if (index2 == 0) {
                  return "07.11.2021";
                }
                if (index2 == 1) {
                  return (Random().nextInt(50)).toString();
                }
                if (index2 == 2) {
                  return AppLocalizations.of(context)!.currencyunit + "127000";
                }
                return AppLocalizations.of(context)!.lormshort;
              })
            ];
          }),
        ];

    return SingleChildScrollView(
      child: EsSimpleTable(
        headingRowHeight: StructureBuilder.dims!.h0Padding * 4,
        dataRowHeight: StructureBuilder.dims!.h0Padding * 2,
        zebraMode: true,
        headingColor: StructureBuilder.styles!.primaryDarkColor,
        rowsContent: [
          ...List.generate(_contentList.length, (index) {
            return [
              ...List.generate(
                  _contentList[index].length,
                  (index2) => EsTitle(_contentList[index][index2],
                      color: StructureBuilder.styles!.primaryDarkColor))
            ];
          }),
        ],
        columnTitle: [
          EsTitle(AppLocalizations.of(context)!.date,
              color: StructureBuilder.styles!.primaryLightColor),
          EsTitle(AppLocalizations.of(context)!.numberofsales,
              color: StructureBuilder.styles!.primaryLightColor),
          EsTitle(AppLocalizations.of(context)!.income,
              color: StructureBuilder.styles!.primaryLightColor),
        ],
      ),
    );
  }
}
