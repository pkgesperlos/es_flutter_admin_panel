import 'package:es_flutter_component/components/es_table/es_simple_table.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../components/container_items.dart';
import '../components/page_title_container.dart';

class PanelBillSample extends StatefulWidget {
  PanelBillSample({Key? key}) : super(key: key);

  @override
  State<PanelBillSample> createState() => _PanelBillSampleState();
}

class _PanelBillSampleState extends State<PanelBillSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(

            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  child: EsSimpleTable(
                    zebraMode: true,
                    headingColor: StructureBuilder.styles!.primaryColor,
                    rowsContent: [
                      [
                        EsOrdinaryText("1"),
                        EsOrdinaryText("طراحی بروشور"),
                        EsOrdinaryText("2"),
                        EsOrdinaryText("20000 تومان"),
                        EsOrdinaryText("40000تومان"),
                      ],
                      [
                        EsOrdinaryText("2"),
                        EsOrdinaryText("طراحی لوگو"),
                        EsOrdinaryText("2"),
                        EsOrdinaryText("20000 تومان"),
                        EsOrdinaryText("40000تومان"),
                      ],
                      [
                        EsOrdinaryText("3"),
                        EsOrdinaryText("پرینت آگهی"),
                        EsOrdinaryText("3"),
                        EsOrdinaryText("20000 تومان"),
                        EsOrdinaryText("60000تومان"),
                      ],
                      [
                        EsOrdinaryText("4"),
                        EsOrdinaryText("طراحی اپلیکیشن"),
                        EsOrdinaryText("2"),
                        EsOrdinaryText("100000 تومان"),
                        EsOrdinaryText("200000تومان"),
                      ],
                    ],
                    columnTitle: [
                      EsTitle(
                        "#",
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      EsTitle("توضیحات",
                          color: StructureBuilder.styles!.primaryLightColor),
                      EsTitle("تعداد",
                          color: StructureBuilder.styles!.primaryLightColor),
                      EsTitle("قیمت",
                          color: StructureBuilder.styles!.primaryLightColor),
                      EsTitle("جمع کل",
                          color: StructureBuilder.styles!.primaryLightColor)
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsOrdinaryText("جمع مبالغ: 12,348,000 تومان",
                      color: StructureBuilder.styles!.secondaryColor,)
                  ],
                )
              ],
            ),
          ),
          title: "Bill",
          information:
              "It is a quill Text Editor located in: \n es_flutter_component>lib/es_form/es_text_editor/es_text_editor.dart"
              " \n and is used as: \n "
              """EsTextEditor(),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.quilltexteditortitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
