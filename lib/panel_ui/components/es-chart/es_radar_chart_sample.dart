import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

const gridColor = Color(0xff68739f);
const titleColor = Color(0xffdb8c98);
const fashionColor = Color(0xffc74466);
const artColor = Color(0xff63e7e5);
const boxingColor = Color(0xffaaee57);
const entertainmentColor = Colors.white70;
const offRoadColor = Color(0xFFE5DD8E);

class EsRadarChartSample1 extends StatefulWidget {
  const EsRadarChartSample1({Key? key,});

  @override
  State<EsRadarChartSample1> createState() => _EsRadarChartSample1State();
}

class _EsRadarChartSample1State extends State<EsRadarChartSample1> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.66,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: StructureBuilder.dims!.h1Padding,
            right: StructureBuilder.dims!.h1Padding,
            top: StructureBuilder.dims!.h0Padding,
            bottom: StructureBuilder.dims!.h0Padding,
          ),
          child:Card(
            color: StructureBuilder.styles!.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: rawDataSets()
                        .asMap()
                        .map((index, value) {
                          final isSelected = index == selectedDataSetIndex;
                          return MapEntry(
                            index,
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDataSetIndex = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                height: 26,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? gridColor.withOpacity(0.5)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(46),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 400),
                                      curve: Curves.easeInToLinear,
                                      padding: EdgeInsets.all(isSelected ? 8 : 6),
                                      decoration: BoxDecoration(
                                        color: value.color,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    AnimatedDefaultTextStyle(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInToLinear,
                                      style: TextStyle(
                                        color: isSelected ? value.color : gridColor,
                                      ),
                                      child: Text(value.title),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                        .values
                        .toList(),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 2,
                  child: RadarChart(
                    RadarChartData(
                      radarTouchData: RadarTouchData(
                        touchCallback: (FlTouchEvent event, response) {
                          if (!event.isInterestedForInteractions) {
                            setState(() {
                              selectedDataSetIndex = -1;
                            });
                            return;
                          }
                          setState(() {
                            selectedDataSetIndex =
                                response?.touchedSpot?.touchedDataSetIndex ?? -1;
                          });
                        },
                      ),
                      dataSets: showingDataSets(),
                      radarBackgroundColor: Colors.transparent,
                      borderData: FlBorderData(show: false),
                      radarBorderData: const BorderSide(color: Colors.transparent),
                      titlePositionPercentageOffset: 0.2,
                      titleTextStyle:
                          const TextStyle(color: titleColor, fontSize: 14),
                      // getTitle: (index, angle) {
                      //   final usedAngle =
                      //       relativeAngleMode ? angle + angleValue : angleValue;
                      //   switch (index) {
                      //     case 0:
                      //       return RadarChartTitle(
                      //         text: 'Mobile or Tablet',
                      //         angle: usedAngle,
                      //       );
                      //     case 2:
                      //       return RadarChartTitle(
                      //         text: 'Desktop',
                      //         angle: usedAngle,
                      //       );
                      //     case 1:
                      //       return RadarChartTitle(text: 'TV', angle: usedAngle);
                      //     default:
                      //       return const RadarChartTitle(text: '');
                      //   }
                      // },
                      tickCount: 1,
                      ticksTextStyle:
                          const TextStyle(color: Colors.transparent, fontSize: 10),
                      tickBorderData: const BorderSide(color: Colors.transparent),
                      gridBorderData: const BorderSide(color: gridColor, width: 2),
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == selectedDataSetIndex
          ? true
          : selectedDataSetIndex == -1
              ? true
              : false;

      return RadarDataSet(
        fillColor: isSelected
            ? rawDataSet.color.withOpacity(0.2)
            : rawDataSet.color.withOpacity(0.05),
        borderColor:
            isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 3 : 2,
        dataEntries:
            rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 2.3 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: 'Fashion',
        color: fashionColor,
        values: [
          300,
          50,
          250,
        ],
      ),
      RawDataSet(
        title: 'Art & Tech',
        color: artColor,
        values: [
          250,
          100,
          200,
        ],
      ),
      RawDataSet(
        title: 'Entertainment',
        color: entertainmentColor,
        values: [
          200,
          150,
          50,
        ],
      ),
      RawDataSet(
        title: 'Off-road Vehicle',
        color: offRoadColor,
        values: [
          150,
          200,
          150,
        ],
      ),
      RawDataSet(
        title: 'Boxing',
        color: boxingColor,
        values: [
          100,
          250,
          100,
        ],
      ),
    ];
  }
}

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });
  final String title;
  final Color color;
  final List<double> values;
}
