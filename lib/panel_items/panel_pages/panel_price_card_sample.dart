import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../editable_components/es_price_card/es_complex_price_card.dart';
import '../../editable_components/es_price_card/es_price_card.dart';

class PanelPriceCardSample extends StatefulWidget {
  static const routeName = '/panelPriceCardSample';

  PanelPriceCardSample({Key? key}) : super(key: key);

  @override
  State<PanelPriceCardSample> createState() => _PanelPriceCardSampleState();
}

class _PanelPriceCardSampleState extends State<PanelPriceCardSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 500;
    List<String> _titleList = List.generate(
      6,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<bool> _checkList1 = [true, true, false, false, false, false];
    List<bool> _checkList2 = [true, true, true, true, false, false];
    List<bool> _checkList3 = [true, true, true, true, true, true];
    List<String> _priceList = [
      AppLocalizations.of(context)!.free,
      "127000" + AppLocalizations.of(context)!.currencyunit,
      "721000" + AppLocalizations.of(context)!.currencyunit,
    ];
    List<List<bool>> _checkListTotal = [_checkList1, _checkList2, _checkList3];

    List list = [
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            child: EsPriceCard(
              price: _priceList[0],
              titleList: _titleList,
              checkList: _checkList1,
            ),
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """EsPriceCard(
              price: _priceList[0],
              titleList: _titleList,
              checkList: _checkList1,
            ),
            where
            List<String> _titleList = List.generate(
      6,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<bool> _checkList1 = [true, true, false, false, false, false];
            """),
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            child: EsPriceCard(
              priceCardType: PriceCardType.primary,
              price: _priceList[1],
              titleList: _titleList,
              checkList: _checkList2,
            ),
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """EsPriceCard(
              priceCardType: PriceCardType.primary,
              price: _priceList[1],
              titleList: _titleList,
              checkList: _checkList2,
            ),
            where
            List<String> _priceList = [
      AppLocalizations.of(context)!.free,
      "127000" + AppLocalizations.of(context)!.currencyunit,
      "721000" + AppLocalizations.of(context)!.currencyunit,
    ];
    List<String> _titleList = List.generate(
      6,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<bool> _checkList2 = [true, true, true, true, false, false];
            """),
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            child: EsPriceCard(
              price: _priceList[2],
              priceCardType: PriceCardType.golden,
              titleList: _titleList,
              checkList: _checkList3,
            ),
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """EsPriceCard(
              priceCardType: PriceCardType.primary,
              price: _priceList[1],
              titleList: _titleList,
              checkList: _checkList2,
            ),
            where
            List<String> _priceList = [
      AppLocalizations.of(context)!.free,
      "127000" + AppLocalizations.of(context)!.currencyunit,
      "721000" + AppLocalizations.of(context)!.currencyunit,
    ];
    List<String> _titleList = List.generate(
      6,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<bool> _checkList2 = [true, true, true, true, false, false];
            """),
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            child: EsComplexPriceCard(
              priceList: _priceList,
              titleList: _titleList,
              checkList: _checkListTotal,
            ),
          ),
          title: AppLocalizations.of(context)!.complexpricecard,
          information: "It is complex price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """EsComplexPriceCard(
              priceList: _priceList,
              titleList: _titleList,
              checkList: _checkListTotal,
            ),
            where
            List<String> _priceList = [
      AppLocalizations.of(context)!.free,
      "127000" + AppLocalizations.of(context)!.currencyunit,
      "721000" + AppLocalizations.of(context)!.currencyunit,
    ];
    List<String> _titleList = List.generate(
      6,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
     List<List<bool>> _checkListTotal = [_checkList1, _checkList2, _checkList3];

            """),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.pricecardtitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryColor,
                  ),
                  children: List.generate(list.length, (index) {
                    if (index == list.length - 1)
                      return boxShow2(list[index]);
                    else
                      return boxShow(list[index]);
                  })
                  // children: [boxShow(list[0]),boxShow2(list[1]),],

                  )
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget);
  }

  Widget boxShow2(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
