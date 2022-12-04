
import 'package:es_flutter_component/components/es_image/es_zoomable_image.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//carouselSlider and  packages are used
class PanelZoomableImageSample extends StatefulWidget {
  PanelZoomableImageSample({Key? key}) : super(key: key);

  @override
  State<PanelZoomableImageSample> createState() => _PanelZoomableImageSampleState();
}

class _PanelZoomableImageSampleState extends State<PanelZoomableImageSample> {


  @override
  Widget build(BuildContext context) {
    List list = [

      ContainerItems(
          widget: Center(
            child: Container(
              width: 350,
              height: 350,
              child: EsZoomingImage(
                imageProvider:  AssetImage("assets/images/img1.jpg"),)
            ),
          ),
          title: AppLocalizations.of(context)!.zoomableimage,
          information:
          "It is a Zoomable image located in: \n es_flutter_component/lib/components/es_image/es_zoomable_image.dart\n and is used as: \n "
              """EsZoomingImage(
                imageProvider:  AssetImage("assets/images/img1.jpg"),) \n the photo_view package should be added in pubspec.yaml 's dependencies"""),

    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.zoomableimagetitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
