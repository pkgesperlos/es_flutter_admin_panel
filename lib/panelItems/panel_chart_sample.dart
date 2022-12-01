
import 'package:es_flutter_admin_panel/panelItems/components/es-chart/es-circular_chart.dart';
import 'package:es_flutter_admin_panel/panelItems/components/es-chart/es-linear-chart.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/container_items.dart';
import 'components/es-chart/es_bar_chart.dart';
import 'components/page_title_container.dart';

class PanelChartSample extends StatefulWidget {
  PanelChartSample({Key? key}) : super(key: key);

  @override
  State<PanelChartSample> createState() => _PanelChartSampleState();
}

class _PanelChartSampleState extends State<PanelChartSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: EsBarChart(),
          title: AppLocalizations.of(context)!.barCharts,
          information:
              "It is a bar chart located in: \n es_flutter_component>lib>es_chart>es_bar_chart.dart \n and is used as EsBarChart()"),
      ContainerItems(
          widget: EsLinearChart(),
          title: AppLocalizations.of(context)!.linearChart,
          information:
              "It is a linear chart located in: \n es_flutter_component>lib>es_chart>es_linear_chart.dart \n and is used as EsLinearChart()"),
      ContainerItems(
          widget: EsCircularChart(),
          title: AppLocalizations.of(context)!.circularCharts,
          information:
              "It is a circular chart located in: \n es_flutter_component>lib>es_chart>es_circular_chart.dart \n and is used as EsCircularChart()"),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.simpletabletitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: StructureBuilder.dims!.h0Padding,
                  ),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
