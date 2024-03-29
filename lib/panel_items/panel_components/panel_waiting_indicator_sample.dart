
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_waiting_indicator/es_blink_waiting_indicator.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelWaitingIndicatorSample extends StatefulWidget {

  static const routeName = '/panelWaitingIndicatorSample';

  PanelWaitingIndicatorSample({Key? key}) : super(key: key);

  @override
  State<PanelWaitingIndicatorSample> createState() =>
      _PanelWaitingIndicatorSampleState();
}

class _PanelWaitingIndicatorSampleState
    extends State<PanelWaitingIndicatorSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              height: 70,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                children: [
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.dangerColor().dangerDark,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.specificColor,
                    ),
                  ),
                  EsBlinkWaitingIndicator(),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.specificColor,
                  ),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.dangerColor().dangerDark,
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.waitingindicatorsindifferentcolors,
          information:
              "these are waiting indicators in different colors that blink type  located in: \n es_flutter_component/lib/components/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.specificColor,
                  ),"""),
      ContainerItems(
          widget: Container(
              height: 70,
              child: Wrap(
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding * 3,
                    height: StructureBuilder.dims!.h0Padding * 3,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding * 2,
                    height: StructureBuilder.dims!.h0Padding * 2,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h1Padding,
                    height: StructureBuilder.dims!.h1Padding,
                    child: CircularProgressIndicator(
                      strokeWidth: StructureBuilder.dims!.h2Padding*0.5,
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h2Padding,
                    height: StructureBuilder.dims!.h2Padding,
                    child: CircularProgressIndicator(
                      strokeWidth: StructureBuilder.dims!.h2Padding*0.5,
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*2.5,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*2,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*0.5,),
                ],
              )),
          title: AppLocalizations.of(context)!.waitingindicatorsindifferentsizes,
          information:
              "these are waiting indicators in different sizes that blink type  located in: \n es_flutter_component/lib/components/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*2,),"""),
      ContainerItems(
          widget: Container(
              height: 70,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsButton(text: "button",icon: SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ),),
                  EsButton(text: "button",icon: SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: EsBlinkWaitingIndicator(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),),
                ],
              )),
          title: AppLocalizations.of(context)!.waitingindicatorsonbuttons,
          information:
          "these are waiting indicators on buttons that blink type  located in: \n es_flutter_component/lib/components/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsButton(text: "button",icon: SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: EsBlinkWaitingIndicator(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ),),"""),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body:  Scaffold(
            backgroundColor: StructureBuilder.styles!.primaryColor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  PageTitleContainer(
                    title: AppLocalizations.of(context)!.watingindicatortitle,
                  ),
                  BootstrapContainer(
                      fluid: true,
                      padding: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h0Padding,
                      ),
                      decoration: BoxDecoration(
                        color: StructureBuilder.styles!.primaryColor,
                      ),
                      children: List.generate(
                          list.length, (index) => boxShow(list[index])))
                ],
              ),
            ),
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-6 col-lg-12 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
