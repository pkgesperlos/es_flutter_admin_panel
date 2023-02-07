import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_map/es_show_location.dart';

import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelMapSample extends StatefulWidget {
  static const routeName = '/panelMapSample';

  PanelMapSample({Key? key}) : super(key: key);

  @override
  State<PanelMapSample> createState() => _PanelMapSampleState();
}

class _PanelMapSampleState extends State<PanelMapSample> {
  @override
  void initState() {
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
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
            height: 700,
            width: double.infinity,
            child: EsShowLocation(
              latitude: 30.291314113953575,
              longitude: 57.067726807889755,
            ),
          ),
          title: AppLocalizations.of(context)!.map,
          information: "It is a locatin map, \n "
              "the syncfusion_flutter_maps package is added in pubspec.yaml 's dependencies \n "
              "\n and is used as"
              """ EsShowLocation(
        latitude: 29.619307268182446,
        longitude: 52.524025272119665,
      ),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.maptitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h0Padding),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
