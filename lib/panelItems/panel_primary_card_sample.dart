import 'package:es_flutter_admin_panel/main.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_icon_text.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_subtitle.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
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

class PanelPrimaryCardSample extends StatelessWidget {
  const PanelPrimaryCardSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                padding: EdgeInsets.symmetric(
                  horizontal: StructureBuilder.dims!.h0Padding,
                  vertical: StructureBuilder.dims!.h0Padding,
                ),
                child: EsOrdinaryText(
                  StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                  overFlowTag: true,
                  maxLine: 2,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                    EsVSpacer(),
                    EsSubtitle(AppLocalizations.of(context)!.subtitle),
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
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                    EsOrdinaryText(
                      StructureBuilder.configs!.lorm,
                      align: TextAlign.justify,
                      overFlowTag: true,
                      maxLine: 3,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                      maxLine: 3,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsHDivider(),
                    EsTitle(
                      AppLocalizations.of(context)!.footer,
                    ),
                    EsVSpacer(),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                padding: EdgeInsets.symmetric(
                  horizontal: StructureBuilder.dims!.h0Padding,
                  vertical: StructureBuilder.dims!.h0Padding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsTitle(
                      AppLocalizations.of(context)!.item,
                    ),
                    EsVSpacer(),
                    EsHDivider(),
                    EsVSpacer(),
                    EsTitle(
                      AppLocalizations.of(context)!.item,
                    ),
                    EsVSpacer(),
                    EsHDivider(),
                    EsVSpacer(),
                    EsTitle(
                      AppLocalizations.of(context)!.item,
                    ),
                    EsVSpacer(),
                    EsHDivider(),
                    EsVSpacer(),
                    EsTitle(
                      AppLocalizations.of(context)!.item,
                    ),
                    EsVSpacer(),
                    EsHDivider(),
                    EsVSpacer(),
                    EsTitle(
                      AppLocalizations.of(context)!.item,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                padding: EdgeInsets.symmetric(
                  horizontal: StructureBuilder.dims!.h0Padding,
                  vertical: StructureBuilder.dims!.h0Padding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsTitle(
                      AppLocalizations.of(context)!.quotation,
                    ),
                    EsVSpacer(),
                    EsHDivider(),
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
                    EsIconText(
                      "Lorm ipsum Lorm ipsum Lorm ipsum",
                      icon: Icon(Icons.minimize),
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                padding: EdgeInsets.symmetric(
                  horizontal: StructureBuilder.dims!.h0Padding,
                  vertical: StructureBuilder.dims!.h0Padding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsTitle(
                      AppLocalizations.of(context)!.quotation,
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
                      factor: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        EsButton(
                          text: AppLocalizations.of(context)!.button,
                        ),
                      ],
                    ),
                    EsVSpacer(),
                  ],
                ),
              ),
            ],
          )),
          title: "Primary cards",
          information: "They are primary cards in panel:"
              """Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                    EsVSpacer(),
                    EsSubtitle(AppLocalizations.of(context)!.subtitle),
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
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
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
              ),
              Container(
                clipBehavior: Clip.antiAlias,
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
              ),
              Container(
                clipBehavior: Clip.antiAlias,
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
              ),
              Container(
                clipBehavior: Clip.antiAlias,
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
              ),
              Container(
                clipBehavior: Clip.antiAlias,
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
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                    Image.asset(
                      "assets/images/img2.jpg",
                      fit: BoxFit.cover,
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
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                child: Image.asset(
                  "assets/images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
          title: "Image cards",
          information: "They are primary cards in panel:"
              """Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                    EsVSpacer(),
                    EsSubtitle(AppLocalizations.of(context)!.subtitle),
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
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                      height: StructureBuilder.dims!.h0Padding * 5,
                      child: SingleChildScrollView(
                        child: EsOrdinaryText(
                          StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                padding: EdgeInsets.symmetric(
                  horizontal: StructureBuilder.dims!.h0Padding,
                  vertical: StructureBuilder.dims!.h0Padding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: StructureBuilder.dims!.h0Padding * 5,
                      child: SingleChildScrollView(
                        child: EsOrdinaryText(
                          StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,
                        ),
                      ),
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsHDivider(),
                    EsTitle(
                      AppLocalizations.of(context)!.footer,
                    ),
                    EsVSpacer(),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                      height: StructureBuilder.dims!.h0Padding * 5,
                      child: SingleChildScrollView(
                        child: EsOrdinaryText(
                          StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm +
                              StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,
                        ),
                      ),
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsHDivider(),
                    EsTitle(
                      AppLocalizations.of(context)!.footer,
                    ),
                    EsVSpacer(),
                  ],
                ),
              ),
            ],
          )),
          title: "Scrollable cards",
          information: "They are scrollable cards in panel:"
              """Container(
                decoration: BoxDecoration(
                    color: MyStyle.cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
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
                        height: StructureBuilder.dims!.h0Padding*5,
                      child: SingleChildScrollView(
                        child: EsOrdinaryText(
                          StructureBuilder.configs!.lorm+
                              StructureBuilder.configs!.lorm+
                              StructureBuilder.configs!.lorm+
                              StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,

                        ),
                      ),
                    )
                  ],
                ),
              ),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.sweetalerttitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
