import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsGrowthBarChart extends StatefulWidget {
  const EsGrowthBarChart({Key? key}) : super(key: key);

  @override
  _EsGrowthBarChartState createState() => _EsGrowthBarChartState();
}

class _EsGrowthBarChartState extends State<EsGrowthBarChart> {
  final Color leftBarColor = StructureBuilder.styles!.primaryLightColor;
  final Color rightBarColor =
      StructureBuilder.styles!.warningColor().warningDark;
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: StructureBuilder.styles!.primaryDarkColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
        horizontal: StructureBuilder.dims!.h1Padding,
      ),
      child: Column(
        children: [
          EsVSpacer(
            big: true,
            factor: 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: StructureBuilder.dims!.h1Padding,
              horizontal: StructureBuilder.dims!.h0Padding,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsHeader(
                      AppLocalizations.of(context)!.growthrate,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                Row(
                  children: <Widget>[
                    Indicator(
                      color: leftBarColor,
                      text: "Success",
                      isSquare: true,
                    ),
                    EsHSpacer(),
                    Indicator(
                      color: rightBarColor,
                      text: 'Primary',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
          EsVSpacer(),
          AspectRatio(
            aspectRatio: 1.66,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: StructureBuilder.dims!.h1Padding,
                  right: StructureBuilder.dims!.h1Padding,
                  top: StructureBuilder.dims!.h0Padding,
                  bottom: StructureBuilder.dims!.h0Padding,
                ),
                child: Card(
                  color: StructureBuilder.styles!.primaryDarkColor,
                  child: Padding(
                    padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: BarChart(
                            BarChartData(
                              maxY: 20,
                              barTouchData: BarTouchData(
                                  touchTooltipData: BarTouchTooltipData(
                                    tooltipBgColor: Colors.grey,
                                    getTooltipItem: (_a, _b, _c, _d) => null,
                                  ),
                                  touchCallback:
                                      (FlTouchEvent event, response) {
                                    if (response == null ||
                                        response.spot == null) {
                                      setState(() {
                                        touchedGroupIndex = -1;
                                        showingBarGroups =
                                            List.of(rawBarGroups);
                                      });
                                      return;
                                    }

                                    touchedGroupIndex =
                                        response.spot!.touchedBarGroupIndex;

                                    setState(() {
                                      if (!event.isInterestedForInteractions) {
                                        touchedGroupIndex = -1;
                                        showingBarGroups =
                                            List.of(rawBarGroups);
                                        return;
                                      }
                                      showingBarGroups = List.of(rawBarGroups);
                                      if (touchedGroupIndex != -1) {
                                        var sum = 0.0;
                                        for (var rod in showingBarGroups[
                                                touchedGroupIndex]
                                            .barRods) {
                                          sum += rod.toY;
                                        }
                                        final avg = sum /
                                            showingBarGroups[touchedGroupIndex]
                                                .barRods
                                                .length;

                                        showingBarGroups[touchedGroupIndex] =
                                            showingBarGroups[touchedGroupIndex]
                                                .copyWith(
                                          barRods: showingBarGroups[
                                                  touchedGroupIndex]
                                              .barRods
                                              .map((rod) {
                                            return rod.copyWith(toY: avg);
                                          }).toList(),
                                        );
                                      }
                                    });
                                  }),
                              titlesData: FlTitlesData(
                                show: true,
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: bottomTitles,
                                    reservedSize: 42,
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 28,
                                    interval: 1,
                                    getTitlesWidget: leftTitles,
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              barGroups: showingBarGroups,
                              gridData: FlGridData(show: false),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 10) {
      text = '5K';
    } else if (value == 19) {
      text = '10K';
    } else {
      return Container();
    }
    return Text(text, style: style);
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text(
          'Jan',
          style: style,
        );
        break;
      case 1:
        text = const Text(
          'Feb',
          style: style,
        );
        break;
      case 2:
        text = const Text(
          'Mar',
          style: style,
        );
        break;
      case 3:
        text = const Text(
          'Apri',
          style: style,
        );
        break;
      case 4:
        text = const Text(
          'May',
          style: style,
        );
        break;
      case 5:
        text = const Text(
          'Jun',
          style: style,
        );
        break;
      case 6:
        text = const Text(
          'July',
          style: style,
        );
        break;
      default:
        text = const Text(
          '',
          style: style,
        );
        break;
    }
    return Padding(padding: const EdgeInsets.only(top: 20), child: text);
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        toY: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        toY: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xffF2F2F2),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        EsOrdinaryText(text, color: textColor)
      ],
    );
  }
}
