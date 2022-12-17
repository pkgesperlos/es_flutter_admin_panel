import 'dart:math';

import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_table/es_simple_table.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsBill extends StatelessWidget {
   EsBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EsVSpacer(big: true,factor: 5,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsHeader(AppLocalizations.of(context)!.bill+"#114114314",
                color: StructureBuilder.styles!.primaryColor,),
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),

            ],
          ),
          EsVSpacer(big: true,factor: 3,),
          EsHDivider(),
          EsVSpacer(big: true,factor: 5,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
            ],
          ),
          EsVSpacer(big: true,factor: 3,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
              EsTitle("104",
                color: StructureBuilder.styles!.secondaryColor,),
            ],
          ),
          EsVSpacer(big: true,factor: 2,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
            ],
          ),
          EsVSpacer(big: true,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
              EsTitle(AppLocalizations.of(context)!.lormshort,
                color: StructureBuilder.styles!.secondaryColor,),
            ],
          ),
          EsVSpacer(big: true,factor: 5,),
          EsSimpleTable(
            zebraMode: true,
            headingColor: StructureBuilder.styles!.primaryColor,
            rowsContent: [
              [
                EsOrdinaryText("1"),
                EsOrdinaryText("طراحی بروشور"),
                EsOrdinaryText("2"),
                EsOrdinaryText("20000 "+AppLocalizations.of(context)!.currencyunit,),
                EsOrdinaryText("40000 "+AppLocalizations.of(context)!.currencyunit),
              ],
              [
                EsOrdinaryText("2"),
                EsOrdinaryText("طراحی لوگو"),
                EsOrdinaryText("2"),
                EsOrdinaryText("20000 "+AppLocalizations.of(context)!.currencyunit),
                EsOrdinaryText("40000 "+AppLocalizations.of(context)!.currencyunit),
              ],
              [
                EsOrdinaryText("3"),
                EsOrdinaryText("پرینت آگهی"),
                EsOrdinaryText("3"),
                EsOrdinaryText("20000 "+AppLocalizations.of(context)!.currencyunit),
                EsOrdinaryText("60000 "+AppLocalizations.of(context)!.currencyunit),
              ],
              [
                EsOrdinaryText("4"),
                EsOrdinaryText("طراحی اپلیکیشن"),
                EsOrdinaryText("2"),
                EsOrdinaryText("100000 "+AppLocalizations.of(context)!.currencyunit),
                EsOrdinaryText("200000 "+AppLocalizations.of(context)!.currencyunit),
              ],
            ],
            columnTitle: [
              EsTitle(
                "#",
                color: StructureBuilder.styles!.primaryLightColor,
              ),
              EsTitle(AppLocalizations.of(context)!.description,
                  color: StructureBuilder.styles!.primaryLightColor),
              EsTitle(AppLocalizations.of(context)!.number,
                  color: StructureBuilder.styles!.primaryLightColor),
              EsTitle(AppLocalizations.of(context)!.price,
                  color: StructureBuilder.styles!.primaryLightColor),
              EsTitle(AppLocalizations.of(context)!.totalamountp,
                  color: StructureBuilder.styles!.primaryLightColor)
            ],
          ),
          EsVSpacer(big: true,factor: 3,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EsOrdinaryText(AppLocalizations.of(context)!.totalamount,
                color: StructureBuilder.styles!.secondaryColor,)
            ],
          ),
          EsVSpacer(big: true,factor: 3,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EsOrdinaryText(AppLocalizations.of(context)!.tax,
                color: StructureBuilder.styles!.secondaryColor,)
            ],
          ),
          EsVSpacer(big: true,factor: 5,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EsHeader(AppLocalizations.of(context)!.total,
                color: StructureBuilder.styles!.primaryColor,)
            ],
          ),
          EsVSpacer(big: true,factor: 5,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormmid,
                color: StructureBuilder.styles!.secondaryColor,)
            ],
          ),
          EsVSpacer(big: true,factor: 5,),
          EsHDivider(),
          EsVSpacer(big: true,factor: 5,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EsButton(text: AppLocalizations.of(context)!.print,
                icon:
                Icon(Icons.print,
                  color: StructureBuilder.styles!.primaryLightColor
                  ,size: StructureBuilder.dims!.h3IconSize/2,
                ),),
              /*   EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/search.svg"
                  ,size: StructureBuilder.dims!.h3IconSize,
                     color: StructureBuilder.styles!.primaryLightColor,
                ) ,*/
              EsHSpacer(),
              EsButton(text: AppLocalizations.of(context)!.sendbill,
                icon: Icon(Icons.send,
                  color: StructureBuilder.styles!.primaryLightColor
                  ,size: StructureBuilder.dims!.h3IconSize/2,),
                /* EsSvgIcon(
                         "packages/es_flutter_component/assets/svgs/search.svg"
                         ,size: StructureBuilder.dims!.h3IconSize,
                         color: StructureBuilder.styles!.primaryLightColor,
                       )*/

              ),

            ],
          ),
        ],
      ),
    );
  }
}
