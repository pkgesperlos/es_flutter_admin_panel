import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsPriceCard extends StatelessWidget {
  List<String> titleList;
  List<bool> checkList;
  String? price;
  PriceCardType? priceCardType;

  EsPriceCard({
    Key? key,
    required this.titleList,
     this.price,
    required this.checkList,
     this.priceCardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PriceCardType _priceCardType=priceCardType??PriceCardType.forStart;
    String _price=price??AppLocalizations.of(context)!.free;
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(StructureBuilder.dims!.h0BorderRadius)),
            border: Border.all(color: StructureBuilder.styles!.secondaryColor)),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Column(
              children: [
                EsOrdinaryText(
                    _title(_priceCardType,context),
                    color: StructureBuilder.styles!.primaryDarkColor),
                EsVSpacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EsLabelText(AppLocalizations.of(context)!.yearly,
                        color: StructureBuilder.styles!.secondaryColor),
                    EsHSpacer(),
                    EsHeader(
                      _price,
                      size: StructureBuilder.dims!.h0FontSize*2,
                    ),
                  ],
                ),
              ],
            ),),
            EsVSpacer(big: true,factor: 3,),
            Expanded(
              flex: 21,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      titleList.length,
                          (index) => Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: checkList[index]
                                    ? Image.asset(
                                  "packages/es_flutter_components/assets/images/tick.png",
                                  width:
                                  StructureBuilder.dims!.h3IconSize,
                                  height:
                                  StructureBuilder.dims!.h3IconSize,
                                )
                                    : Image.asset(
                                  "packages/es_flutter_components/assets/images/cross.png",
                                  width:
                                  StructureBuilder.dims!.h3IconSize,
                                  height:
                                  StructureBuilder.dims!.h3IconSize,
                                ),),
                              EsHSpacer(),
                              Expanded(
                                flex: 7,
                                child: EsOrdinaryText(titleList[index],
                                    align: TextAlign.start,
                                    isBold: true,
                                    color:
                                    StructureBuilder.styles!.t2Color),
                              )
                            ],
                          ),
                          EsVSpacer(big: true,factor: 3,)
                        ],
                      ))),
              ),),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: EsButton(
                  text: AppLocalizations.of(context)!.teststart,
                ),
              ),)
          ],
        ));
  }

  String _title(PriceCardType priceCardType,BuildContext context){
    if(priceCardType==PriceCardType.forStart) {
      return AppLocalizations.of(context)!.forstart;
    }
    if(priceCardType==PriceCardType.primary) {
      return AppLocalizations.of(context)!.primary;
    }
    if(priceCardType==PriceCardType.golden) {
      return AppLocalizations.of(context)!.golden;
    } else {
      return AppLocalizations.of(context)!.forstart;
    }
  }

}
enum PriceCardType{
  forStart,primary,golden
}