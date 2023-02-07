
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_accordion/es_accordion.dart';
import 'package:es_flutter_components/components/es_accordion/es_scrollable_accordion.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class PanelaccordionSample extends StatelessWidget {

  static const routeName = '/panelaccordionSample';

  const PanelaccordionSample({Key? key}) : super(key: key);

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
              child: Esaccordion(
            items: _items,
          )),
          title: AppLocalizations.of(context)!.simpleaccordion,
          information:
              "It is an simple accordion located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(items: _items,)"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """),

      ContainerItems(
          widget: Container(
              // height: _height,
              child: Esaccordion(
            items: _items,
            isremovable: true,
          )),
          title: AppLocalizations.of(context)!.removableaccordion,
          information:
              "It is a removable accordion located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(items: _items,isremovable: true,)"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: Esaccordion(
            items: _items,
            decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1Padding))),
          )),
          title: AppLocalizations.of(context)!.solidaccordion,
          information:
              "It is a solid accordion located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(
                items: _items,
              decoration: BoxDecoration(
                color: StructureBuilder.styles!.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1Padding))
              ),)"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: Esaccordion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_components/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryDarkColor,
            ),
          )
          ),
          title: AppLocalizations.of(context)!.iconaccordion,
          information:
              "It is an icon accordion located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_components/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryDarkColor,
            ),
          )
          ),"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: Esaccordion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_components/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryDarkColor,
            ),
                openIcon: EsSvgIcon(
                  "packages/es_flutter_components/assets/svgs/menu.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
                closeIcon: EsSvgIcon(
                  "packages/es_flutter_components/assets/svgs/menu.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
          )),
          title: AppLocalizations.of(context)!.accordionwithdesiredarrowicon,
          information:
              "It is an accordion with desired arrow icon located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(
            items: _items,
            icon: EsSvgIcon(
              "packages/es_flutter_components/assets/svgs/GraduationCap.svg",
              size: StructureBuilder.dims!.h3IconSize,
              color: StructureBuilder.styles!.primaryDarkColor,
            ),
                openIcon: EsSvgIcon(
                  "packages/es_flutter_components/assets/svgs/menu.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
                closeIcon: EsSvgIcon(
                  "packages/es_flutter_components/assets/svgs/menu.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
          )"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
      ContainerItems(
          widget: Container(
              // height: _height,
              child: Esaccordion(
            backGroundImagePath: "assets/images/img1.jpg",
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
              "It is an  accordion with background image located in: \n es_flutter_component/lib/components/es_accordion>es_accordion.dart \n and is used as: \n "
              """Esaccordion(
            backGroundImagePath: "assets/images/img1.jpg",
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
          )"""
                  "\n   where \n"
                  """
      final List<Map<String, dynamic>> _items = List.generate(
        3,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
      ContainerItems(
          widget: Container(
              height: _height,
              child: EsScrollableaccordion(
                items: _itemsScroll,
              )),
          title: AppLocalizations.of(context)!.scrollableaccordion,
          information:
          "It is a scrollable accordion located in: \n es_flutter_component/lib/components/es_accordion>es_scrollable_accordion.dart\n and is used as: \n "
              """EsScrollableaccordion(items: _itemsScroll,)"""
              "\n   where \n"
              """
      final List<Map<String, dynamic>> _itemsScroll = List.generate(
        10,
        (index) => {
              "id": index,
              "title": AppLocalizations.of(context)!.item + " \$index",
              "content": AppLocalizations.of(context)!.lorm,
            });
          """
      ),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(title: AppLocalizations.of(context)!.accordiontitle,),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(horizontal:StructureBuilder.dims!.h0Padding),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryColor,
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
