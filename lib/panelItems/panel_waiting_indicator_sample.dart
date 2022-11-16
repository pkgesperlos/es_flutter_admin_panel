import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_waiting_indicator/es_blink_waiting_indicator.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'widgets/es_button/es_button.dart';

class PanelWaitingIndicatorSample extends StatefulWidget {
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
                      color: StructureBuilder.styles!.tritiaryColor,
                    ),
                  ),
                  EsBlinkWaitingIndicator(),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.tritiaryColor,
                  ),
                  EsBlinkWaitingIndicator(
                    color: StructureBuilder.styles!.dangerColor().dangerDark,
                  ),
                ],
              )),
          title: "Waiting indicators in deiffernt colors",
          information:
              "They are waiting indicators in deiffernt colors that blink type  located in: \n es_flutter_component/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,),"""),
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
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding * 2,
                    height: StructureBuilder.dims!.h0Padding * 2,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h0Padding,
                    height: StructureBuilder.dims!.h0Padding,
                    child: CircularProgressIndicator(
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h1Padding,
                    height: StructureBuilder.dims!.h1Padding,
                    child: CircularProgressIndicator(
                      strokeWidth: StructureBuilder.dims!.h2Padding*0.5,
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: StructureBuilder.dims!.h2Padding,
                    height: StructureBuilder.dims!.h2Padding,
                    child: CircularProgressIndicator(
                      strokeWidth: StructureBuilder.dims!.h2Padding*0.5,
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*2.5,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*2,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding,),
                  EsBlinkWaitingIndicator(size: StructureBuilder.dims!.h0Padding*0.5,),
                ],
              )),
          title: "Waiting indicators in deiffernt sizes",
          information:
              "They are waiting indicators in deiffernt sizes that blink type  located in: \n es_flutter_component/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,),"""),
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
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ),),
                ],
              )),
          title: "Waiting indicators in buttons",
          information:
          "They are waiting indicators in deiffernt colors that blink type  located in: \n es_flutter_component/es_waiting_indicator/es_blink_waiting_indicator.dart;' \n and is used as: \n "
              """EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,),"""),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.progressbartitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: StructureBuilder.dims!.h0Padding,
                  ),
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
        sizes: 'col-sm-12 col-ml-6 col-lg-12 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
