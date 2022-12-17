import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../editable_components/es_card/es_image_card/es_image_card_1.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_2.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_3.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_4.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_5.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_6.dart';
import '../../editable_components/es_card/es_image_card/es_image_card_7.dart';

class PanelImageCardSample extends StatelessWidget {
  const PanelImageCardSample({Key? key}) : super(key: key);



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
                  // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  children: [
                    cardShow(EsImageCard1()),
                    cardShow(EsImageCard2()),
                    cardShow(EsImageCard3()),
                    cardShow(EsImageCard4()),
                    cardShow(EsImageCard5()),
                    cardShow(EsImageCard6()),
                    cardShow(EsImageCard7()),
                  ],),),
          title: AppLocalizations.of(context)!.imagecard,
          information: "these are image cards in panel:"
              """Container(
              child: BootstrapContainer(
                  fluid: true,
                  // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  children: [
                    cardShow(EsImageCard1()),
                    cardShow(EsImageCard2()),
                    cardShow(EsImageCard3()),
                    cardShow(EsImageCard4()),
                    cardShow(EsImageCard5()),
                    cardShow(EsImageCard6()),
                    cardShow(EsImageCard7()),
                  ],),),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.imagecardtitle,
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


