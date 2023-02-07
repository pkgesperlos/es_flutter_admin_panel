import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';

class EsIncomeCard extends StatelessWidget {
  List<String>? descriptionList;
  String? memberBenefitsNum;
  String? paymentsNum;
  String? logisticNum;

  EsIncomeCard({
    Key? key,
    this.descriptionList,
    this.memberBenefitsNum,
    this.paymentsNum,
    this.logisticNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _titleList = [
      AppLocalizations.of(context)!.memberbenefits,
      AppLocalizations.of(context)!.payments,
      AppLocalizations.of(context)!.logistics,
    ];
    List<String> _descriptionList = descriptionList ??
        List.generate(
          _titleList.length,
          (index) => AppLocalizations.of(context)!.lormshort,
        );
    List<String> _numberList = [
      memberBenefitsNum ?? "114255",
      paymentsNum ?? "115253",
      logisticNum ?? "11144",
    ];

    List<Widget> _iconList = [
      EsSvgIcon(
        // "packages/es_flutter_component/"
        "assets/svgs/share.svg",
        size: StructureBuilder.dims!.h2IconSize,
        color: StructureBuilder.styles!.primaryDarkColor,
      ),
      EsSvgIcon(
        // "packages/es_flutter_component/"
        "assets/svgs/dollarsquare.svg",
        size: StructureBuilder.dims!.h2IconSize,
        color: StructureBuilder.styles!.successColor().successRegular,
      ),
      EsSvgIcon(
        // "packages/es_flutter_component/"
        "assets/svgs/truckfast.svg",
        size: StructureBuilder.dims!.h2IconSize,
        color: StructureBuilder.styles!.specificColor,
      ),
    ];

    return Container(
      height: 305,
      clipBehavior: Clip.antiAlias,
      decoration: MyStyle.dashboardCardDecoration,
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h1Padding,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                    _titleList.length,
                    (index) => ticketinfo(index, _titleList, _descriptionList,
                        _numberList, _iconList, context))
              ],
            ),
          )),
    );
  }

  Widget ticketinfo(
      int index,
      List<String> widgetTitleList,
      List<String> widgetDescriptionList,
      List<String> widgetNumbrerList,
      List<Widget> widgetIconList,
      BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h1Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [widgetIconList[index]],
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsHeader(
                          widgetTitleList[index],
                          color: StructureBuilder.styles!.primaryDarkColor,
                        ),
                        EsVSpacer(),
                        EsOrdinaryText(
                          widgetDescriptionList[index],
                          color: StructureBuilder.styles!.t3Color,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      widgetNumbrerList[index] +
                          AppLocalizations.of(context)!.currencyunit,
                      color: StructureBuilder.styles!.primaryDarkColor,
                      isBold: true,
                      align: TextAlign.start,
                    ),
                  ],
                ),
              ),
              EsHSpacer(),
            ],
          ),
          EsVSpacer(),
          index != (widgetTitleList.length - 1) ? EsHDivider() : Container(),
        ],
      ),
    );
  }
}
