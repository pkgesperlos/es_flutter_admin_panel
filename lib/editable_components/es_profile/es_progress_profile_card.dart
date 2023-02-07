import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_button/es_icon_button.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../main.dart';

class EsProgressProfileCard extends StatelessWidget {
  double? percent;
  void Function()? editFunction;


  EsProgressProfileCard({
    Key? key,
    this.percent,
    this.editFunction,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String _percent=(percent??70).toString()+"%";

    return Container(

      padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EsHeader( AppLocalizations.of(context)!.completetheprofile,
          isBold: true,
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
          EsVSpacer(big: true,factor: 5,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 14,
                child: LinearPercentIndicator(
                  padding: EdgeInsets.all(0),
                  barRadius:
                  Radius.circular(StructureBuilder.dims!.h3IconSize),
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                  percent: (percent??70) / 100,
                  center: EsLabelText(
                    _percent,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  progressColor: StructureBuilder.styles!.primaryDarkColor,
                  backgroundColor: StructureBuilder.styles!.t2Color,
                ),
              ),
              EsHSpacer(big: true,),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: EsIconButton(

                    Icon(Icons.edit,
                      color: StructureBuilder.styles!.primaryLightColor,
                      size: StructureBuilder.dims!.h3IconSize /2,
                    ),
                    onTap: editFunction,
                  ),
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}
