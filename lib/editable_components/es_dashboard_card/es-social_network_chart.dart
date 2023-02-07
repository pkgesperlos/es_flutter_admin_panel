import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsSocialNetworkChart extends StatefulWidget {
  const EsSocialNetworkChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => EsSocialNetworkChartState();
}

class EsSocialNetworkChartState extends State {
  int touchedIndex = -1;
  Color _color1 = StructureBuilder.styles!.socialNetworkColor().youtube;
  Color _color2 = StructureBuilder.styles!.socialNetworkColor().facebook;
  Color _color3 = StructureBuilder.styles!.socialNetworkColor().instagram;
  Color _color4 = StructureBuilder.styles!.socialNetworkColor().whatsapp;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 385,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(StructureBuilder.dims!.h0BorderRadius)),
        color: StructureBuilder.styles!.primaryDarkColor,
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
          EsHeader(
            AppLocalizations.of(context)!.socialnetworksatistic,
            color: StructureBuilder.styles!.primaryLightColor,
          ),
          EsVSpacer(
            big: true,
            factor: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              EsHSpacer(
                big: true,
                factor: 2,
              ),
              Expanded(
                flex: 4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                        pieTouchData: PieTouchData(touchCallback:
                            (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections()),
                  ),
                ),
              ),
              EsHSpacer(
                big: true,
                factor: 2,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Indicator(
                      color: _color1,
                      text: "YouTube   10K",
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: _color2,
                      text: 'Face Book   7K',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: _color3,
                      text: 'Instagram   1.5K',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: _color4,
                      text: 'WhatsApp   1.5K',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
              EsHSpacer(
                big: true,
                factor: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: _color1,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontFamily: "IranianSans",
                fontSize: fontSize,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: _color2,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontFamily: "IranianSans",
                fontSize: fontSize,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: _color3,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontFamily: "IranianSans",
                fontSize: fontSize,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: _color4,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontFamily: "IranianSans",
                fontSize: fontSize,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
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
