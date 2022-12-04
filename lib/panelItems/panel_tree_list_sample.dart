import 'dart:math';


import 'package:es_flutter_component/components/es_tree_list/tree_list_view.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_table/responsive_table.dart';

class PanelTreeListSample extends StatefulWidget {
  PanelTreeListSample({Key? key}) : super(key: key);

  @override
  State<PanelTreeListSample> createState() => _PanelTreeListSampleState();
}

class _PanelTreeListSampleState extends State<PanelTreeListSample> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: 500,
              child: TreeListView()),
          title: AppLocalizations.of(context)!.defaulttreelistview,
          information:
          "it is Tree list view with desired icon that the list_treeview package is added in pubspec.yaml 's dependencies \n"
              " and the widget located in: \n es_flutter_component/lib/components/es_tree_list/tree_list_view.dart \n"
              "and is used as: \n "
              """
             TreeListView()
              """),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: 500,
              child: TreeListView(
                favoriteIcon:  EsSvgIcon(
                "packages/es_flutter_component/assets/svgs/ticksquare.svg",
                size: StructureBuilder.dims!.h3IconSize,
              ),indicatorIcon:  EsSvgIcon(
                "packages/es_flutter_component/assets/svgs/square.svg",
                size: StructureBuilder.dims!.h3IconSize,
              ),
              )),
          title: AppLocalizations.of(context)!.treelistviewwithdesiredicon,
          information:
              "it is Tree list view with desired icon that the list_treeview package is added in pubspec.yaml 's dependencies \n"
                  " and the widget located in: \n es_flutter_component/lib/components/es_tree_list/tree_list_view.dart \n"
                  "and is used as: \n "
              """
              TreeListView(
                favoriteIcon:  EsSvgIcon(
                "packages/es_flutter_component/assets/svgs/ticksquare.svg",
                size: StructureBuilder.dims!.h3IconSize,
              ),indicatorIcon:  EsSvgIcon(
                "packages/es_flutter_component/assets/svgs/square.svg",
                size: StructureBuilder.dims!.h3IconSize,
              ),
              )
              """),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.treelistviewtitle,
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
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(

        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}

