import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../es_image/es_svg_icon.dart';

class EsCustomToastContainer extends StatelessWidget {
  Color? backGroundColor;
  Color? contentColor;
  EdgeInsetsGeometry? padding;
  bool? hasProgressBar;
  Duration? duration;
  Widget? content;
  Widget? icon;

  EsCustomToastContainer({Key? key,
  this.backGroundColor,
  this.contentColor,
  this.padding,
  this.hasProgressBar,
  this.duration,
  this.content,
  this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int _duration = (duration ?? Duration(milliseconds: 2000)).inMilliseconds;

    return Container(
      width: StructureBuilder.dims!.h0Padding * 20,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(StructureBuilder.dims!.h1BorderRadius),
        boxShadow: [
          BoxShadow(
            color:contentColor?? StructureBuilder.styles!.successColor().successDark,
            // blurRadius: 2.0,

            offset: Offset(-5, 0),
          ),
        ],
        color: backGroundColor ??
            StructureBuilder.styles!.successColor().successLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:padding?? EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h1Padding,
                vertical: StructureBuilder.dims!.h1Padding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon ??
                    EsSvgIcon(
                      "packages/es_flutter_components/assets/svgs/CheckCircle.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: contentColor ??
                          StructureBuilder.styles!.successColor().successDark,
                    ),
                EsHSpacer(big: true,
                factor: 3,
                ),
                content ?? EsOrdinaryText("This is a Custom Toast"),
              ],
            ),
          ),
          hasProgressBar ?? true
              ? LinearPercentIndicator(
                  barRadius: Radius.circular(StructureBuilder.dims!.h3IconSize),
                  animation: true,
                  animationDuration: _duration,
                  lineHeight: StructureBuilder.dims!.h3IconSize * 0.2,
                  percent: 100 / 100,
                  progressColor:contentColor??
                      StructureBuilder.styles!.successColor().successDark,
                  backgroundColor:backGroundColor??
                      StructureBuilder.styles!.successColor().successLight,
                )
              : Container(),
        ],
      ),
    );
  }
}
