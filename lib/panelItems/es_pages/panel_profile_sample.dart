import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';
import '../../panel_ui/components/es_profile/es_profile_information_card.dart';
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

    Widget _cardShow(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
    }
    Widget _cardShow2(Widget widget) {

      return BootstrapCol(

          sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
    }
    List list = [

      ContainerItems(
          widget: Container(

            child: BootstrapContainer(
              padding: EdgeInsets.symmetric(
                vertical: StructureBuilder.dims!.h0Padding,
                horizontal: StructureBuilder.dims!.h0Padding,
              ),
                fluid: true,
              children:[
                _cardShow2(Container(
                    height: StructureBuilder.dims!.h0Padding*30,
                    child: EsProfileTabBarCard()),),

                _cardShow(EsProfileCard(),),
                _cardShow(Column(
                  children: [
                    EsProgressProfileCard(),
                    EsVSpacer(big: true,),
                    EsProgressListCard(
                      titleList: _titleList,
                      colorList: _colorList,
                      percentList: _percentList,
                    ),
                  ],
                ),),
                _cardShow(Column(
                  children: [
                    EsProfileInformationCard(),
                    EsVSpacer(big: true,),
                    EsShareCard(),
                  ],
                ),),


              ]
            ),
          ),
          title: AppLocalizations.of(context)!.profilepage,
          information: "It is a profile page "
              "and located in:"
              " \n es_flutter_component/lib/components/es_profile "
              "\n and is used as: \n "
              """ Container(

            child: BootstrapContainer(
              padding: EdgeInsets.symmetric(
                vertical: StructureBuilder.dims!.h0Padding,
                horizontal: StructureBuilder.dims!.h0Padding,
              ),
                fluid: true,
              children:[
                _cardShow2(Container(
                    height: StructureBuilder.dims!.h0Padding*30,
                    child: EsProfileTabBarCard()),),

                _cardShow(EsProfileCard(),),
                _cardShow(Column(
                  children: [
                    EsProgressProfileCard(),
                    EsVSpacer(big: true,),
                    EsProgressListCard(
                      titleList: _titleList,
                      colorList: _colorList,
                      percentList: _percentList,
                    ),
                  ],
                ),),
                _cardShow(Column(
                  children: [
                    EsProfileInformationCard(),
                    EsVSpacer(big: true,),
                    EsShareCard(),
                  ],
                ),),


              ]
            ),
          ),"""),


    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.profilepagetitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(list.length, (index) {

                    return boxShow(list[index]);
                  })

                  )
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }



  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
