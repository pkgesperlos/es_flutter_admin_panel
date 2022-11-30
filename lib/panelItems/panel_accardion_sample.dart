
import 'package:es_flutter_component/components/es_accardion/es_accardion.dart';
import 'package:es_flutter_component/components/es_accardion/es_scrollable_accardion.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/container_items.dart';
import 'components/page_title_container.dart';

class PanelAccardionSample extends StatelessWidget {
  const PanelAccardionSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: EsAccardion(
            items: _items,
          )),
          title: AppLocalizations.of(context)!.simpleaccordion,
          information:
              "They are simple accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(items: _items,)"""),
      ContainerItems(
          widget: Container(
              height: StructureBuilder.dims!.h0Padding * 11.5,
              child: EsScrollableAccardion(
                items: _itemsScroll,
              )),
          title: AppLocalizations.of(context)!.scrollableaccordion,
          information:
              "They are scrollable accordions located in: \n es_flutter_component>lib>es_accardion>es_scrollable_accardion.dart\n and is used as: \n "
              """EsScrollableAccardion(items: _itemsScroll,)"""),
      ContainerItems(
          widget: Container(

              // height: StructureBuilder.dims!.h0Padding*8,
              child: EsAccardion(
            items: _items,
            isremovable: true,
          )),
          title: AppLocalizations.of(context)!.removableaccordion,
          information:
              "IThey are removable accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(items: _items,isremovable: true,)"""),
      ContainerItems(
          widget: Container(

              // height: StructureBuilder.dims!.h0Padding*8,
              child: EsAccardion(
            items: _items,
            decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryDarkColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1Padding))),
          )),
          title: AppLocalizations.of(context)!.solidaccordion,
          information:
              "They are solid accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
              """EsAccardion(
                items: _items,
              decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryDarkColor,
                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1Padding))
              ),)"""),
      ContainerItems(
          widget: Container(

              // height: StructureBuilder.dims!.h0Padding*8,
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
              "They are icon accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
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

              // height: StructureBuilder.dims!.h0Padding*8,
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
              "They are icon accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
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

              // height: StructureBuilder.dims!.h0Padding*8,
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
              "They are solid accordions located in: \n es_flutter_component>lib>es_accardion>es_accardion.dart \n and is used as: \n "
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
    ];

    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
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
