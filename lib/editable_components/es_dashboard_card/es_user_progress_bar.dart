import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../main.dart';

class EsUserProgressBar extends StatelessWidget {
  String? description;
  String? onlineNumber;
  String? onlinePercent;
  String? offlineNumber;

  EsUserProgressBar({
    Key? key,
    this.description,
    this.onlineNumber,
    this.onlinePercent,
    this.offlineNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _onlinePercent = int.parse(onlineNumber ?? "25");
    return Container(
      height: 305,
      clipBehavior: Clip.antiAlias,
      decoration: MyStyle.dashboardCardDecoration,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: StructureBuilder.dims!.h0Padding,
          vertical: StructureBuilder.dims!.h0Padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            EsOrdinaryText(
              AppLocalizations.of(context)!.users,
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              big: true,
              factor: 2,
            ),
            EsOrdinaryText(
              description ?? AppLocalizations.of(context)!.lormmid,
              color: StructureBuilder.styles!.t4Color,
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 3,
            ),
            EsVSpacer(
              factor: 4.5,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: StructureBuilder.dims!.h0Padding * 2,
                      lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                      animation: true,
                      animationDuration: 1000,
                      percent: _onlinePercent / 100,
                      center: EsHeader(
                        _onlinePercent.toString() + "%",
                        color: StructureBuilder.styles!.primaryDarkColor,
                      ),
                      progressColor: StructureBuilder.styles!.primaryDarkColor,
                      backgroundColor: StructureBuilder.styles!.t2Color,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsOrdinaryText(
                      onlineNumber ?? "300",
                      align: TextAlign.justify,
                      overFlowTag: true,
                      maxLine: 3,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.online,
                      align: TextAlign.justify,
                      overFlowTag: true,
                      maxLine: 3,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                  ],
                ),
                EsHSpacer(),
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: StructureBuilder.dims!.h0Padding * 2,
                      lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                      animation: true,
                      animationDuration: 1000,
                      percent: (100 - _onlinePercent) / 100,
                      center: EsHeader(
                        (100 - _onlinePercent).toString() + "%",
                        color: StructureBuilder.styles!.primaryDarkColor,
                      ),
                      progressColor: StructureBuilder.styles!.specificColor,
                      backgroundColor: StructureBuilder.styles!.t2Color,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsOrdinaryText(
                      offlineNumber ?? "5400",
                      align: TextAlign.justify,
                      overFlowTag: true,
                      maxLine: 3,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.offline,
                      align: TextAlign.justify,
                      overFlowTag: true,
                      maxLine: 3,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
