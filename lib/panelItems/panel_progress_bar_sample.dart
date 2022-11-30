
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'components/container_items.dart';
import 'components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PanelProgressBarSample extends StatefulWidget {
  PanelProgressBarSample({Key? key}) : super(key: key);

  @override
  State<PanelProgressBarSample> createState() => _PanelProgressBarSampleState();
}

class _PanelProgressBarSampleState extends State<PanelProgressBarSample> {
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
              height: 330,
              child: Column(
                children: [
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.tritiaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor:
                        StructureBuilder.styles!.dangerColor().dangerDark,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h0Padding,
                    children: [
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        animation: true,
                        animationDuration: 1000,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor: StructureBuilder.styles!.primaryColor,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        animation: true,
                        animationDuration: 1000,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor: StructureBuilder.styles!.tritiaryColor,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        animation: true,
                        animationDuration: 1000,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor:
                            StructureBuilder.styles!.dangerColor().dangerDark,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                    ],
                  ),
                ],
              )),
          title: "Animated  progress bar from zero",
          information:
              "It is a animated  progress bar from zero in different sizes that the percent_indicator package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """LinearPercentIndicator(
                    barRadius: Radius.circular(StructureBuilder.dims!.h3IconSize),
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: StructureBuilder.dims!.h3IconSize*0.7,
                    percent:75/100,
                    center: EsLabelText("75%",color:StructureBuilder.styles!.primaryLightColor,),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),"""),
      ContainerItems(
          widget: Container(
              height: 330,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h2IconSize,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    width: StructureBuilder.dims!.h0Padding * 5,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    width: StructureBuilder.dims!.h0Padding * 7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    width: StructureBuilder.dims!.h0Padding * 12,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!
              .simplelinearprogressbarindifferentsizes,
          information:
              "It is a simple linear progress bar in different sizes that the percent_indicator package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """LinearPercentIndicator(
            barRadius: Radius.circular(StructureBuilder.dims!.h3IconSize),
            lineHeight: StructureBuilder.dims!.h3IconSize,
            percent:75/100,
            center: EsLabelText("75%",color:StructureBuilder.styles!.primaryLightColor,),
            progressColor: StructureBuilder.styles!.primaryColor,
            backgroundColor: StructureBuilder.styles!.t2Color,
          ),"""),
      ContainerItems(
          widget: Container(
              height: 330,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                // runSpacing: StructureBuilder.dims!.h0Padding,
                // direction: Axis.vertical,
                children: [
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding,
                    lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding * 2,
                    lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding * 3,
                    lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding,
                    lineWidth: StructureBuilder.dims!.h3IconSize * 0.1,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding,
                    lineWidth: StructureBuilder.dims!.h3IconSize * 0.5,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  CircularPercentIndicator(
                    radius: StructureBuilder.dims!.h0Padding,
                    lineWidth: StructureBuilder.dims!.h3IconSize,
                    percent: 75 / 100,
                    center: EsHeader(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!
              .simplecircularprogressbarindifferentsizes,
          information:
              "It is a simple linear progress bar in different sizes that the percent_indicator package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """CircularPercentIndicator(
              radius: StructureBuilder.dims!.h0Padding,
              lineWidth: StructureBuilder.dims!.h3IconSize*0.2,
              percent: 75/100,
              center: EsHeader("75%",color:StructureBuilder.styles!.primaryColor,),
              progressColor: StructureBuilder.styles!.primaryColor,
              backgroundColor: StructureBuilder.styles!.t2Color,
            ),"""),
      ContainerItems(
          widget: Container(
              height: 330,
              child: Column(
                children: [
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.primaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor: StructureBuilder.styles!.tritiaryColor,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    progressColor:
                        StructureBuilder.styles!.dangerColor().dangerDark,
                    backgroundColor: StructureBuilder.styles!.t2Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h0Padding,
                    children: [
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor: StructureBuilder.styles!.primaryColor,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor: StructureBuilder.styles!.tritiaryColor,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        progressColor:
                            StructureBuilder.styles!.dangerColor().dangerDark,
                        backgroundColor: StructureBuilder.styles!.t2Color,
                      ),
                    ],
                  ),
                ],
              )),
          title:
              AppLocalizations.of(context)!.simpleprogressbarindifferentcolors,
          information:
              "It is a simple linear progress bar in different colors that the percent_indicator package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """LinearPercentIndicator(
            barRadius: Radius.circular(StructureBuilder.dims!.h3IconSize),
            lineHeight: StructureBuilder.dims!.h3IconSize,
            percent:75/100,
            center: EsLabelText("75%",color:StructureBuilder.styles!.primaryLightColor,),
            progressColor: StructureBuilder.styles!.primaryColor,
            backgroundColor: StructureBuilder.styles!.t2Color,
          ),"""),
      ContainerItems(
          widget: Container(
              height: 330,
              child: Column(
                children: [
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    linearGradient: LinearGradient(colors: [
                      StructureBuilder.styles!.primaryColor,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.primaryColor,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.primaryColor,
                      StructureBuilder.styles!.t2Color,
                    ]),
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    linearGradient: LinearGradient(colors: [
                      StructureBuilder.styles!.tritiaryColor,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.tritiaryColor,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.tritiaryColor,
                      StructureBuilder.styles!.t2Color,
                    ]),
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  LinearPercentIndicator(
                    barRadius:
                        Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize * 0.7,
                    percent: 75 / 100,
                    center: EsLabelText(
                      "75%",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    linearGradient: LinearGradient(colors: [
                      StructureBuilder.styles!.dangerColor().dangerDark,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.dangerColor().dangerDark,
                      StructureBuilder.styles!.t2Color,
                      StructureBuilder.styles!.dangerColor().dangerDark,
                      StructureBuilder.styles!.t2Color,
                    ]),
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 3,
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h0Padding,
                    children: [
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        linearGradient: LinearGradient(colors: [
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                        ]),
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        linearGradient: LinearGradient(colors: [
                          StructureBuilder.styles!.tritiaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.tritiaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.tritiaryColor,
                          StructureBuilder.styles!.t2Color,
                        ]),
                      ),
                      CircularPercentIndicator(
                        radius: StructureBuilder.dims!.h0Padding * 2,
                        lineWidth: StructureBuilder.dims!.h3IconSize * 0.2,
                        percent: 75 / 100,
                        center: EsHeader(
                          "75%",
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                        linearGradient: LinearGradient(colors: [
                          StructureBuilder.styles!.dangerColor().dangerDark,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.dangerColor().dangerDark,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.dangerColor().dangerDark,
                          StructureBuilder.styles!.t2Color,
                        ]),
                      ),
                    ],
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.gradiantprogressbar,
          information:
              "It is a gradiant  progress bar  that the percent_indicator package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """ LinearPercentIndicator(
                    barRadius: Radius.circular(StructureBuilder.dims!.h3IconSize),
                    lineHeight: StructureBuilder.dims!.h3IconSize*0.7,
                    percent:75/100,
                    center: EsLabelText("75%",color:StructureBuilder.styles!.primaryLightColor,),

                    linearGradient: LinearGradient(
                        colors: [
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                          StructureBuilder.styles!.primaryColor,
                          StructureBuilder.styles!.t2Color,
                    ]),
                  ),"""),
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
        sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
