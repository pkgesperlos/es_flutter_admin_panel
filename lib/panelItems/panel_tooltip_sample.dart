import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_button/es_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_tooltip/es_tooltip.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelTooltipSample extends StatelessWidget {
  const PanelTooltipSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              EsTooltip(
                message: 'message',
                widget: EsButton(

                text: 'tooltip',
                fillColor: StructureBuilder.styles!.buttonColor().primary,

              ),
                preferBelow: false,)
            ],
          )),
          title: AppLocalizations.of(context)!.modalsindifferentsizes,
          information:
              "They are  tooltips in different positions located in: \n es_flutter_component/es_modal/es_modal.dart \n and is used as: \n "
              """EsButton(
                text: 'Modal',
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,);
                },
              ),"""),

    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.modaltitle,
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
