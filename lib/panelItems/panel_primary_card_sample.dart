import 'package:es_flutter_admin_panel/main.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/es_card/es_primary_card/es_primary_card_4.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/es_card/es_primary_card/es_primary_card_5.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/es_card/es_primary_card/es_primary_card_6.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/es_card/es_primary_card/es_primary_card_7.dart';

import 'package:es_flutter_component/components/es_text/es_icon_text.dart';
import 'package:es_flutter_component/components/es_text/es_subtitle.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../panel_ui/components/es_card/es_primary_card/es_primary_card_1.dart';
import '../panel_ui/components/es_card/es_primary_card/es_primary_card_2.dart';
import '../panel_ui/components/es_card/es_primary_card/es_primary_card_3.dart';

class PanelPrimaryCardSample extends StatelessWidget {
  const PanelPrimaryCardSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget cardShow(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
    }

    List<String> _stringList=List.generate(10, (index) => AppLocalizations.of(context)!.item+(index+1).toString(),);

    List list = [
      ContainerItems(
          widget: Container(
            child: BootstrapContainer(fluid: true,
                // padding: EdgeInsets.all(StructureBuilder.dims!.h3Padding),
                children: [
                  cardShow(EsPrimaryCard1()),
                  cardShow(EsPrimaryCard2()),
                  cardShow(EsPrimaryCard3()),
                  cardShow(EsPrimaryCard4()),
                  cardShow(EsPrimaryCard5(
                    stringList: _stringList,
                  )),
                  cardShow(EsPrimaryCard6()),
                  cardShow(EsPrimaryCard7()),
                ]),
          ),
          title: AppLocalizations.of(context)!.primarycard,
          information: "They are primary cards in panel:"
              """Container(
                    decoration: BoxDecoration(
                        color: MyStyle.cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                            StructureBuilder.dims!.h0BorderRadius))),
                    margin: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,
                      vertical: StructureBuilder.dims!.h0Padding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsOrdinaryText(
                          StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,
                          overFlowTag: true,
                          maxLine: 5,
                        ),
                        EsVSpacer(
                          big: true,
                          factor: 4,
                        ),
                        EsHDivider(),
                        EsTitle(
                          AppLocalizations.of(context)!.footer,
                        ),
                        EsVSpacer(),
                      ],
                    ),
                  """),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.primarycardtitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
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
