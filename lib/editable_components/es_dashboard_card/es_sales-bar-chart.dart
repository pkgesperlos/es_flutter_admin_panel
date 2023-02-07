import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../es-chart/legend_widget.dart';

class EsSalesBarChart extends StatefulWidget {
  const EsSalesBarChart({Key? key}) : super(key: key);

  @override
  _EsSalesBarChartState createState() => _EsSalesBarChartState();
}

class _EsSalesBarChartState extends State<EsSalesBarChart> {
  static const pilateColor = Color(0xff632af2);
  static const cyclingColor = Color(0xffffb3ba);
  static const quickWorkoutColor = Color(0xff578eff);
  static const betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
    int x,
    double pilates,
    double quickWorkout,
    double cycling,
  ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: pilates,
          color: pilateColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout,
          color: quickWorkoutColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace + quickWorkout + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout + betweenSpace + cycling,
          color: cyclingColor,
          width: 5,
        ),
      ],
    );
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
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(
            StructureBuilder.dims!.h1Padding,
          ),
          child: Card(
            color: StructureBuilder.styles!.t5Color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    StructureBuilder.dims!.h0BorderRadius)),
            child: Padding(
              padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsHeader(
                    AppLocalizations.of(context)!.saleschart,
                    color: Color(0xff171547),
                  ),
                  EsVSpacer(),
                  LegendsListWidget(
                    legends: [
                      Legend('Export', pilateColor),
                      Legend('Wholesale', quickWorkoutColor),
                      Legend('Retail sales', cyclingColor),
                    ],
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  AspectRatio(
                    aspectRatio: 4,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceBetween,
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(),
                          rightTitles: AxisTitles(),
                          topTitles: AxisTitles(),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 42,
                            ),
                          ),
                        ),
                        barTouchData: BarTouchData(enabled: false),
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: false),
                        barGroups: [
                          generateGroupData(0, 2, 3, 2),
                          generateGroupData(1, 2, 5, 1.7),
                          generateGroupData(2, 1.3, 3.1, 2.8),
                          generateGroupData(3, 3.1, 4, 3.1),
                          generateGroupData(4, 0.8, 3.3, 3.4),
                          generateGroupData(5, 2, 5.6, 1.8),
                          generateGroupData(6, 1.3, 3.2, 2),
                          generateGroupData(7, 2.3, 3.2, 3),
                          generateGroupData(8, 2, 4.8, 2.5),
                          generateGroupData(9, 1.2, 3.2, 2.5),
                          generateGroupData(10, 1, 4.8, 3),
                          generateGroupData(11, 2, 4.4, 2.8),
                        ],
                        maxY: 10 + (betweenSpace * 3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
      case 7:
        text = const Text(
          'Aug',
          style: style,
        );
        break;
      case 8:
        text = const Text(
          'Sep',
          style: style,
        );
        break;
      case 9:
        text = const Text(
          'Oct',
          style: style,
        );
        break;
      case 10:
        text = const Text(
          'Nov',
          style: style,
        );
        break;
      case 11:
        text = const Text(
          'Dec',
          style: style,
        );
        break;
      case 11:
        text = const Text(
          'Oct',
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
