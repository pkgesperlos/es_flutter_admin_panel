import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_button/es_icon_button.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../main.dart';

class EsProgressListCard extends StatelessWidget {
  String? title;
  List<double>? percentList;
  List<String>? titleList;
  List<Color>? colorList;


  EsProgressListCard({
    Key? key,
    this.title,
    this.percentList,
    this.titleList,
    this.colorList,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _titleList=titleList??[];
    List<double> _percentList=percentList??List.generate(_titleList.length,
          (index) => 70,);
    List<String> _percentListString=List.generate(_titleList.length
        , (index) => (_percentList[index]).toString()+"%");

    List<Color> _colorList=colorList??List.generate(_titleList.length,
          (index) => StructureBuilder.styles!.primaryDarkColor,);

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
          EsHeader( title??AppLocalizations.of(context)!.skills,
          isBold: true,
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
          EsVSpacer(big: true,factor: 5,),
          ...List.generate(_titleList.length, (index) =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsVSpacer(big: true,factor: 3,),
                  EsOrdinaryText(_titleList[index],
                   color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  EsVSpacer(big: true,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // flex: 17,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.all(0),
                          barRadius:
                          Radius.circular(StructureBuilder.dims!.h3IconSize),
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                          percent: (_percentList[index]) / 100,
                          center: EsLabelText(
                            _percentListString[index],
                            color: StructureBuilder.styles!.primaryLightColor,
                          ),
                          progressColor: _colorList[index],
                          backgroundColor: StructureBuilder.styles!.t2Color,
                        ),
                      ),
                      EsHSpacer(big: true,),


                    ],
                  ),],
              ))

        ],
      ),
    );
  }
}
