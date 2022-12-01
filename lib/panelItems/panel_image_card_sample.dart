import 'package:es_flutter_admin_panel/main.dart';

import 'package:es_flutter_component/components/es_text/es_icon_text.dart';
import 'package:es_flutter_component/components/es_text/es_subtitle.dart';
import 'components/container_items.dart';
import 'components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    cardShow(Container(
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
                    )),
                    cardShow(Container(
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
                          Image.asset(
                            "assets/images/img2.jpg",
                          ),
                        ],
                      ),
                    )),
                    cardShow(Container(
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    cardShow(Container(
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    EsButton(
                                      text: AppLocalizations.of(context)!.button,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    cardShow(Container(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.symmetric(
                        vertical: StructureBuilder.dims!.h1Padding,
                      ),
                      decoration: BoxDecoration(
                          color: MyStyle.cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h0BorderRadius))),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              "assets/images/img2.jpg",
                              fit: BoxFit.cover,
                            ),),
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
                    )),
                    cardShow(Container(
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
                          EsTitle(
                            AppLocalizations.of(context)!.header,
                          ),
                          EsVSpacer(),
                          EsHDivider(),
                          EsVSpacer(
                            big: true,
                            factor: 2,
                          ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.symmetric(
                              vertical: StructureBuilder.dims!.h1Padding,
                            ),
                            decoration: BoxDecoration(
                                color: MyStyle.cardColor,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    StructureBuilder.dims!.h0BorderRadius))),
                            child: Image.asset(
                              "assets/images/img2.jpg",
                              fit: BoxFit.cover,
                            ),
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
                        ],
                      ),
                    )),
                    cardShow(Container(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.symmetric(
                        vertical: StructureBuilder.dims!.h1Padding,
                      ),
                      decoration: BoxDecoration(
                          color: MyStyle.cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h0BorderRadius))),
                      child: Image.asset(
                        "assets/images/img2.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                  ],),),
          title: AppLocalizations.of(context)!.imagecard,
          information: "They are primary cards in panel:"
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
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
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
