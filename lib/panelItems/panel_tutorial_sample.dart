
import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../main.dart';

class PanelTutorialSample extends StatefulWidget {
  PanelTutorialSample({Key? key}) : super(key: key);

  @override
  State<PanelTutorialSample> createState() => _PanelTutorialSampleState();
}

class _PanelTutorialSampleState extends State<PanelTutorialSample> {
  late TutorialCoachMark tutorialCoachMark;

  GlobalKey titleKey = GlobalKey();
  GlobalKey introCardKey = GlobalKey();
  GlobalKey imageCardKey = GlobalKey();
  GlobalKey informationKey = GlobalKey();

  @override
  void initState() {
    createTutorial();
    // Future.delayed(Duration.zero, showTutorial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          informationKey: informationKey,
          widget: Container(
            key: introCardKey,
            decoration: BoxDecoration(
                color: MyStyle.cardColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
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

                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                EsOrdinaryText(
                  AppLocalizations.of(context)!.tutorialintro,
                  align: TextAlign.justify,
                  overFlowTag: true,
                  maxLine: 3,
                ),
                EsVSpacer(
                  big: true,
                  factor: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      text:AppLocalizations.of(context)!.start,
                      onTap: () {
                        Future.delayed(Duration.zero, showTutorial);
                      },
                    ),
                  ],
                ),
                EsVSpacer(),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.tutorial,
          information:
              "It is a Tutorial that the tutorial_coach_mark package is added in pubspec.yaml 's dependencies \n "
                  "and is used as: \n "
              """onTap: () {
                        Future.delayed(Duration.zero, showTutorial);
                      },
                      where \n  
  late TutorialCoachMark tutorialCoachMark;
  GlobalKey titleKey = GlobalKey();
  GlobalKey introCardKey = GlobalKey();
  GlobalKey imageCardKey = GlobalKey();
  GlobalKey informationKey = GlobalKey();
    void showTutorial() {
    tutorialCoachMark.show(context: context);
  }

  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      colorShadow: StructureBuilder.styles!.t3Color,
      textSkip: "Skip",
      paddingFocus: StructureBuilder.dims!.h1Padding,
      // opacityShadow: 0.8,
      pulseEnable: false,

      /*    onFinish: () {
        print("finish");
      },
      onClickTarget: (target) {
        print('onClickTarget: \$target');
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: \$target");
        print(
            "clicked at position local: \${tapDetails.localPosition} - global: \$\{tapDetails.globalPosition\}");
      },
      onClickOverlay: (target) {
        print("onClickOverlay:  \$target");
      },
      onSkip: () {
        print("skip");
      },*/
    );
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "titleKey",
        keyTarget: titleKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is title card of page",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "introCardKey",
        keyTarget: introCardKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is intro card of tutorial",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "informationKey",
        keyTarget: informationKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is imformation button of card",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.Circle,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "imageCardKey",
        keyTarget: imageCardKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is an image card",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );

    return targets;
  }
                      """),
      ContainerItems(
          widget: Container(
            key: imageCardKey,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(
              vertical: StructureBuilder.dims!.h1Padding,
            ),
            decoration: BoxDecoration(
                color: MyStyle.cardColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/img2.jpg",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: StructureBuilder.dims!.h0Padding,
                    vertical: StructureBuilder.dims!.h0Padding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EsTitle(
                        AppLocalizations.of(context)!.title,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      EsOrdinaryText(
                        StructureBuilder.configs!.lorm,
                        align: TextAlign.justify,
                        overFlowTag: true,
                        maxLine: 3,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      EsLabelText(
                        "last update was 3min ago ",
                        color: StructureBuilder.styles!.t3Color,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.imagecard,
          information: "these are primary cards in panel:"
              """Container(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.symmetric(
                        vertical: StructureBuilder.dims!.h1Padding,
                      ),
                      decoration: BoxDecoration(
                          color: MyStyle.cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h0BorderRadius))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/img2.jpg",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: StructureBuilder.dims!.h0Padding,
                              vertical: StructureBuilder.dims!.h0Padding,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EsTitle(
                                  AppLocalizations.of(context)!.title,
                                ),
                                EsVSpacer(
                                  big: true,
                                  factor: 2,
                                ),
                                EsOrdinaryText(
                                  StructureBuilder.configs!.lorm,
                                  align: TextAlign.justify,
                                  overFlowTag: true,
                                  maxLine: 3,
                                ),
                                EsVSpacer(
                                  big: true,
                                  factor: 2,
                                ),
                                EsLabelText(
                                  "last update was 3min ago ",
                                  color: StructureBuilder.styles!.t3Color,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  key: titleKey,
                  title: AppLocalizations.of(context)!.tutorialtitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h0Padding),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }

  void showTutorial() {
    tutorialCoachMark.show(context: context);
  }

  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      colorShadow: StructureBuilder.styles!.t3Color,
      textSkip: "Skip",
      paddingFocus: StructureBuilder.dims!.h1Padding,
      // opacityShadow: 0.8,
      pulseEnable: false,

      /*    onFinish: () {
        print("finish");
      },
      onClickTarget: (target) {
        print('onClickTarget: $target');
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: $target");
        print(
            "clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
      },
      onClickOverlay: (target) {
        print('onClickOverlay: $target');
      },
      onSkip: () {
        print("skip");
      },*/
    );
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "titleKey",
        keyTarget: titleKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is title card of page",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "introCardKey",
        keyTarget: introCardKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is intro card of tutorial",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "informationKey",
        keyTarget: informationKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is imformation button of card",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.Circle,
      ),
    );
    targets.add(
      TargetFocus(
        enableOverlayTab: true,
        identify: "imageCardKey",
        keyTarget: imageCardKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EsTitle(
                      "It is an image card",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )
                  ],
                ),
              );
            },
          ),
        ],
        shape: ShapeLightFocus.RRect,
      ),
    );

    return targets;
  }
}
