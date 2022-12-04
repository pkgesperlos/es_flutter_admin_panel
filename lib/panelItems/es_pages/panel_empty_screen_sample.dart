

import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../panel_ui/components/page_title_container.dart';


class PanelEmptyScreenSample extends StatefulWidget {
  PanelEmptyScreenSample({Key? key}) : super(key: key);

  @override
  State<PanelEmptyScreenSample> createState() => _PanelEmptyScreenSampleState();
}

class _PanelEmptyScreenSampleState extends State<PanelEmptyScreenSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
            height:1000,
          ),
          title: AppLocalizations.of(context)!.emptyscreen,
          information:
              "It is a empty screen located in "
                  "\n es_flutter_admin_panel/lib/panel_ui/components/container_items.dart"
                  " \n and is used as: \n "
              """ContainerItems(
          widget: Container(
            width: double.infinity,
            height: 200,
          ),
          title: "Empty screen",
          information:  ""
              """),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.emptyscreentitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
