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
              cardShow(Container(
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
              )),
              cardShow(Container(
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
              )),
              cardShow(Container(
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
              )),
            ],
          )),
          title: AppLocalizations.of(context)!.scrollablecard,
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
              )"""),
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
