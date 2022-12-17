
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_accardion/es_accardion.dart';
import 'package:es_flutter_component/components/es_accardion/es_scrollable_accardion.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

 import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';

class PanelAccardionSample extends StatelessWidget {
  const PanelAccardionSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height=270;
    final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " $index",
              "content": AppLocalizations.of(context)!.lorm,
            });
    final List<Map<String, dynamic>> _itemsScroll = List.generate(
        10,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " $index",
              "content": AppLocalizations.of(context)!.lorm,
            });
    List list = [
      ContainerItems(
          widget: Container(
            // height: _height,
              child: EsAccardion(
            items: _items,
          )),
          title: AppLocalizations.of(context)!.simpleaccordion,
          information:
              "these are simple accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(items: _items,)"""),

      ContainerItems(
          widget: Container(
              // height: _height,
              child: EsAccardion(
            items: _items,
            isremovable: true,
          )),
          title: AppLocalizations.of(context)!.removableaccordion,
          information:
              "Ithese are removable accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(items: _items,isremovable: true,)"""),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: EsAccardion(
            items: _items,
            decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryDarkColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1Padding))),
          )),
          title: AppLocalizations.of(context)!.solidaccordion,
          information:
              "these are solid accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(
                items: _items,
              decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryDarkColor,
                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1Padding))
              ),)"""),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: EsAccardion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryColor,
            ),
          )
          ),
          title: AppLocalizations.of(context)!.iconaccordion,
          information:
              "these are icon accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryColor,
            ),
          )
          ),"""),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: EsAccardion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryColor,
            ),
          )),
          title: AppLocalizations.of(context)!.accordionwithdesiredarrowicon,
          information:
              "these are icon accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryColor,
            ),
          )"""),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: EsAccardion(
            backGroundImagePath: "assets/images/back2.png",
            contentColor: StructureBuilder.styles!.primaryLightColor,
            titleTextStyle: TextStyle(
              color: StructureBuilder.styles!.primaryLightColor,
            ),
            childrenTextStyle: TextStyle(
              color: StructureBuilder.styles!.primaryLightColor,
            ),
            items: _items,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1Padding))),
          )),
          title: AppLocalizations.of(context)!.accordionwithbackgroundimage,
          information:
              "these are solid accordions located in: \n es_flutter_component/lib/components/es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(
            backGroundImagePath: "assets/images/back2.png",
            contentColor: StructureBuilder.styles!.primaryLightColor,
            titleTextStyle: TextStyle(
              color: StructureBuilder.styles!.primaryLightColor,
            ),
            childrenTextStyle: TextStyle(
              color: StructureBuilder.styles!.primaryLightColor,
            ),
            items: _items,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1Padding))),
          )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              child: EsScrollableAccardion(
                items: _itemsScroll,
              )),
          title: AppLocalizations.of(context)!.scrollableaccordion,
          information:
          "these are scrollable accordions located in: \n es_flutter_component/lib/components/es_accardion>es_scrollable_accardion.dart\n and is used as: \n "
              """EsScrollableAccardion(items: _itemsScroll,)"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(title: AppLocalizations.of(context)!.accordiontitle,),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(horizontal:StructureBuilder.dims!.h0Padding),
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
}
