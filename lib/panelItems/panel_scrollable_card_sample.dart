import 'package:es_flutter_admin_panel/main.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../panel_ui/components/es_card/es_scrollable_card/es_scrollable_card_1.dart';
import '../panel_ui/components/es_card/es_scrollable_card/es_scrollable_card_2.dart';
import '../panel_ui/components/es_card/es_scrollable_card/es_scrollable_card_3.dart';

class PanelScrollableCardSample extends StatelessWidget {
  const PanelScrollableCardSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardShow(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
    }

    List list = [
      ContainerItems(
          widget: Container(
              child: BootstrapContainer(
            fluid: true,
            children: [
              cardShow(EsScrollableCard1()),
              cardShow(EsScrollableCard2()),
              cardShow(EsScrollableCard3()),
            ],
          )),
          title: AppLocalizations.of(context)!.scrollablecard,
          information: "They are scrollable cards in panel:"
              """Container(
              child: BootstrapContainer(
            fluid: true,
            children: [
              cardShow(EsScrollableCard1()),
              cardShow(EsScrollableCard2()),
              cardShow(EsScrollableCard3()),
            ],
          )),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.scrollablecardtitle,
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
