import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../panel_ui/components/es_profile/es_information_card.dart';
import '../../panel_ui/components/es_profile/es_profile_card.dart';
import '../../panel_ui/components/es_profile/es_profile_tab_bar_card/es_profile_tab_bar_card.dart';
import '../../panel_ui/components/es_profile/es_progress_profile_card.dart';
import '../../panel_ui/components/es_profile/es_progress_list_card.dart';
import '../../panel_ui/components/es_profile/es_share_card.dart';

class PanelProfileSample extends StatefulWidget {
  PanelProfileSample({Key? key}) : super(key: key);

  @override
  State<PanelProfileSample> createState() => _PanelProfileSampleState();
}

class _PanelProfileSampleState extends State<PanelProfileSample> {
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
    double _height=500;
    List<String> _titleList=[
      AppLocalizations.of(context)!.software,
      AppLocalizations.of(context)!.design,
      AppLocalizations.of(context)!.seo,];
    List<double> _percentList=[27,60,90];
    List<Color> _colorList=[
      StructureBuilder.styles!.primaryColor,
      StructureBuilder.styles!.tritiaryColor,
      StructureBuilder.styles!.dangerColor().dangerDark,
    ];
    List list = [

      ContainerItems(
          widget: Container(
            // height: _height,
            width: double.infinity,

            child: EsProfileCard(),
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_profile/es_progress_profile_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              // height: _height,
              child: EsShareCard()
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
      ContainerItems(
          widget: Container(
            width: double.infinity,
              height: _height,
            child: EsProfileTabBarCard(
            )
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
      ContainerItems(
          widget: Container(
            width: double.infinity,
              // height: _height,
            child: EsInformationCard(
              editFunction: (){},
            )
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
      ContainerItems(
          widget: Container(
            width: double.infinity,
              // height: _height,
            child: EsProgressListCard(
              titleList: _titleList,
              colorList: _colorList,
              percentList: _percentList,

            )
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              // height: _height,
              child: EsProgressProfileCard(
                editFunction: (){},
              )
          ),
          title: AppLocalizations.of(context)!.pricecard,
          information: "It is price card "
              "and located in:"
              " \n es_flutter_component/lib/components/es_price_card/es_price_card.dart "
              "\n and is used as: \n "
              """ EsProfileCard(),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
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
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(list.length, (index) {
                    if(index==1){
                      return boxShow3(list[index]);
                    }if(index==2){
                      return boxShow2(list[index]);
                    }
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
  }

  Widget boxShow2(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget boxShow3(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-8 col-xl-8', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
