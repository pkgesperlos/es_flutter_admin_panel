
import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_label/es_label.dart';
import 'package:es_flutter_component/components/es_tooltip/es_tooltip.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';

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
            children: [
              EsTooltip(
                  message: 'message',
                  widget: EsButton(
                    text: AppLocalizations.of(context)!.button,
                    fillColor: StructureBuilder.styles!.buttonColor().primary,
                  ),
                  rightOffset: 150,
                  boxDecoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                      color: StructureBuilder.styles!.t2Color)),
              EsTooltip(
                message: 'message',
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                  fillColor: StructureBuilder.styles!.buttonColor().primary,
                ),
                leftOffset: 150,
              ),
              EsTooltip(
                message: 'message',
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                  fillColor: StructureBuilder.styles!.buttonColor().primary,
                ),
                preferBelow: false,
                leftOffset: 150,
              ),
              EsTooltip(
                  message: 'message',
                  widget: EsButton(
                    text: AppLocalizations.of(context)!.button,
                    fillColor: StructureBuilder.styles!.buttonColor().primary,
                  ),
                  preferBelow: false,
                  rightOffset: 150,
                  boxDecoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                      color: StructureBuilder.styles!.t2Color)),
            ],
          )),
          title: AppLocalizations.of(context)!.tooltipindifferentalignments,
          information:
              "They are  tooltip in different alignments located in: \n es_flutter_component/lib/components/es_tooltip/es_tooltip.dart \n and is used as: \n "
              """EsTooltip(
                message: 'message',
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                  fillColor: StructureBuilder.styles!.buttonColor().primary,
                ),
                leftMargin: 150,),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding*2,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              EsTooltip(
                message: 'message',
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                  fillColor: StructureBuilder.styles!.buttonColor().primary,
                ),

              ),
              EsTooltip(
                message: 'message',
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                  fillColor: StructureBuilder.styles!.buttonColor().secondary,
                  clickable: false,
                ),

              ),

              EsTooltip(
                message: 'message',
                widget: EsOrdinaryText("Text"),
                verticalOffset: 10,
                leftOffset: 50,

              ),

              EsTooltip(
                message: 'message',
                widget:  EsLabel(
                  isUnique: false,
                  widget: EsAvatarImage(
                    path: "assets/images/img4.jpg",
                  ),
                  hasBorder: true,
                  widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                ),
                leftOffset: 50,

              ),


            ],
          )),
          title: AppLocalizations.of(context)!.tooltipfordifferentwidgets,
          information:
              "They are  tooltip on different widgets located in: \n es_flutter_component/lib/components/es_tooltip/es_tooltip.dart \n and is used as: \n "
              """ EsTooltip(
                message: 'message',
                widget:  EsLabel(
                  isUnique: false,
                  widget: EsAvatarImage(
                    path: "assets/images/img4.jpg",
                  ),
                  hasBorder: true,
                  widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                ),
                leftOffset: 50,

              ),"""),
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
                      text: AppLocalizations.of(context)!.button,
                      fillColor: StructureBuilder.styles!.buttonColor().primary,
                    ),
                    showDuration: Duration(milliseconds: 0),
                    preferBelow: false,
                  ),
                  EsTooltip(
                      message: 'message',
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                        fillColor: StructureBuilder.styles!.buttonColor().primary,
                      ),
                      showDuration: Duration(milliseconds: 500),
                      preferBelow: false,
                     ),
                  EsTooltip(
                      message: 'message',
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                        fillColor: StructureBuilder.styles!.buttonColor().primary,
                      ),
                      showDuration: Duration(milliseconds: 1500),
                      preferBelow: false,
                     ),
                  EsTooltip(
                    message: 'message',
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                      fillColor: StructureBuilder.styles!.buttonColor().primary,
                    ),
                    preferBelow: false,
                  ),

                ],
              )),
          title: AppLocalizations.of(context)!.tooltipindifferentshowduration,
          information:
          "They are  tooltip in different show duration located in: \n es_flutter_component/lib/components/es_tooltip/es_tooltip.dart \n and is used as: \n "
              """EsTooltip(
                      message: 'message',
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                        fillColor: StructureBuilder.styles!.buttonColor().primary,
                      ),
                      showDuration: Duration(milliseconds: 500),
                      preferBelow: false,
                     ),"""),

    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.tooltiptitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
