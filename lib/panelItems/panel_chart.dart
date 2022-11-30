import 'components/container_items.dart';
import 'components/page_title_container.dart';
import 'package:es_flutter_component/es-chart/es-circular_chart.dart';
import 'package:es_flutter_component/es-chart/es-linear-chart.dart';
import 'package:es_flutter_component/es-chart/es_bar_chart.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class PanelChart extends StatelessWidget {
  const PanelChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(widget:EsBarChart(),title:AppLocalizations.of(context)!.barCharts,
          information: "It is a bar chart located in: \n es_flutter_component>lib>es_chart>es_bar_chart.dart \n and is used as EsBarChart()"),
      ContainerItems(widget:EsLinearChart(),title:AppLocalizations.of(context)!.linearChart,
          information:"It is a linear chart located in: \n es_flutter_component>lib>es_chart>es_linear_chart.dart \n and is used as EsLinearChart()"),
      ContainerItems(widget:EsCircularChart(),title:AppLocalizations.of(context)!.circularCharts,
          information:"It is a circular chart located in: \n es_flutter_component>lib>es_chart>es_circular_chart.dart \n and is used as EsCircularChart()"),

    ];
    return Material(
        color: StructureBuilder.styles!.primaryLightColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h0Padding),
                margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(
                 AppLocalizations.of(context)!.chartDescription ,
                ),
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(StructureBuilder.dims!.h2FontSize))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h0Padding ,
          ),
          margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding)),
              color: StructureBuilder.styles!.primaryDarkColor),
          child: widget,
        ));
  }
}
