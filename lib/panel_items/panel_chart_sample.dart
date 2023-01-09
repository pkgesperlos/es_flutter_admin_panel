import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';

import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';

import 'package:es_flutter_admin_panel/editable_components/es-chart/es_bar_chart_sample1.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es_bar_chart_sample2.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es_bar_chart_sample3.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es-circular_chart.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es-linear-chart.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es_bar_chart.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es_radar_chart_sample.dart';
import 'package:es_flutter_admin_panel/editable_components/es-chart/es_scatter_chart_sample.dart';


class PanelChartSample extends StatefulWidget {

  static const routeName = '/panelChartSample';

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
    double _height = 500;
    List list = [
      ContainerItems(
          widget: Container(height: _height, child: EsBarChart()),
          title: AppLocalizations.of(context)!.barChart,
          information: "It is a bar chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_bar_chart.dart "
              "\n and is used as EsBarChart()"),
      ContainerItems(
          widget: Container(height: _height, child: EsLinearChart()),
          title: AppLocalizations.of(context)!.linearChart,
          information: "It is a linear chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_linear_chart.dart "
              "\n and is used as EsLinearChart()"),
      ContainerItems(
          widget: Container(height: _height, child: EsCircularChart()),
          title: AppLocalizations.of(context)!.circularChart,
          information: "It is a circular chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_circular_chart.dart "
              "\n and is used as EsCircularChart()"),
      ContainerItems(
          widget: Container(height: _height, child: EsBarChartSample1()),
          title: AppLocalizations.of(context)!.barChart,
          information: "It is a bar chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_bar_chart_sample1.dart"
              "\n and is used as EsBarChartSample1()"),
      ContainerItems(
          widget: Container(height: _height, child: EsBarChartSample2()),
          title: AppLocalizations.of(context)!.barChart,
          information: "It is a bar chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_bar_chart_sample2.dart"
              "\n and is used as EsBarChartSample2()"),
      ContainerItems(
          widget: Container(height: _height, child: EsBarChartSample3()),
          title: AppLocalizations.of(context)!.barChart,
          information: "It is a bar chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_bar_chart_sample3.dart"
              "\n and is used as EsBarChartSample3()"),
      ContainerItems(
          widget: Container(height: _height, child: EsScatterChartSample()),
          title: AppLocalizations.of(context)!.scatterChart,
          information: "It is a scatter chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_scatter_chart_sample.dart"
              "\n and is used as EsScatterChartSample()"),
      ContainerItems(
          widget: Container(height: _height, child: EsRadarChartSample1()),
          title: AppLocalizations.of(context)!.radarChart,
          information: "It is a radar chart, \n "
              "the fl_chart package is added in pubspec.yaml 's dependencies \n "
              "located in: \n"
              " es_flutter_component/lib/components/es_chart/es_radar_chart_sample.dart"
              "\n and is used as EsRadarChartSample1()"),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.charttitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,
                    ),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    children: List.generate(
                        list.length, (index) => boxShow(list[index])))
              ],
            ),
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
