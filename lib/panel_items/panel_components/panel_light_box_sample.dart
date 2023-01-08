
import 'package:es_flutter_component/components/es_image/es_light_box/src/image_type.dart';
import 'package:es_flutter_component/components/es_image/es_light_box/src/light_box_unique.dart';
import 'package:es_flutter_component/components/es_image/es_light_box/src/lightbox_group.dart';
import 'package:es_flutter_component/components/es_image/es_light_box/src/lightbox_route.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelLightBoxSample extends StatefulWidget {

  static const routeName = '/panelLightBoxSample';

  PanelLightBoxSample({Key? key}) : super(key: key);

  @override
  State<PanelLightBoxSample> createState() => _PanelLightBoxSampleState();
}

class _PanelLightBoxSampleState extends State<PanelLightBoxSample> {
  final List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    List list = [

      ContainerItems(
          widget: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          images[position],
                          fit: BoxFit.cover,
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          LightBoxRoute(

                              color: Colors.black54,
                              builder: (BuildContext context) {
                                return LightBoxGroup(

                                  initialIndex: position,
                                  imageType: ImageType.ASSET,
                                  images: images,
                                );
                              },
                              dismissible: false));
                    },
                  );
                }),
          ),
          title: AppLocalizations.of(context)!.gallerylightboxshowingimage,
          information:
          "It is a gallery light box showing image located in: \n es_flutter_component/lib/components/es_image/es_light_box/src/lightbox_group.dart \n and is used as: \n "
              """ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          images[position],
                          fit: BoxFit.cover,
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          LightBoxRoute(

                              color: Colors.black54,
                              builder: (BuildContext context) {
                                return LightBoxGroup(

                                  initialIndex: position,
                                  imageType: ImageType.ASSET,
                                  images: images,
                                );
                              },
                              dismissible: false));
                    },
                  );
                }),"""
              "\n   where \n"
          """
            final List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
  ];
          """
      ),
      ContainerItems(
          widget: Container(
            child: GestureDetector(
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                "assets/images/img1.jpg",
                fit: BoxFit.cover,
              )),
              onTap: () {
                Navigator.push(
                    context,
                    LightBoxRoute(
                        color: Colors.black54,
                        builder: (BuildContext context) {
                          return LightBoxUnique(
                            image: "assets/images/img1.jpg",
                            imageType: ImageType.ASSET,
                          );
                        },
                        dismissible: true));
              },
            ),
          ),
          title: AppLocalizations.of(context)!.singlelightboxshowingimage,
          information:
          "It is a unique light box showing image located in: \n es_flutter_component/lib/components/es_image/es_light_box/src/lightbox_group.dart \n and is used as: \n "
              """GestureDetector(
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                "assets/images/img1.jpg",
                fit: BoxFit.cover,
              )),
              onTap: () {
                Navigator.push(
                    context,
                    LightBoxRoute(
                        color: Colors.black54,
                        builder: (BuildContext context) {
                          return LightBoxUnique(
                            image: "assets/images/img1.jpg",
                            imageType: ImageType.ASSET,
                          );
                        },
                        dismissible: true));
              },
            ),"""),

    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body:SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.lightboxtitle,
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
