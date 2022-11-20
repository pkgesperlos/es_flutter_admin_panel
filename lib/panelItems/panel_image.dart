import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_lightbox_showing_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelImage extends StatelessWidget {
  const PanelImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget:EsAvatarImage(
            path: "assets/images/img1.jpg",
            radius: 100,
          ),
          title:AppLocalizations.of(context)!.avatarImages,
          information: "It is an avatar image located in: \n es_flutter_component>lib>es_image>es_avatar_image.dart \n and is used as: \n "
              """EsAvatarImage(
            path: "assets/images/img1.jpg",)"""
      ),
      ContainerItems(
          widget:Container(
            child: EsZoomingImage(
              img: AssetImage("assets/images/img1.jpg"),
            ),
            width: 300,
            height: 240,
          ),
          title:AppLocalizations.of(context)!.zoomingImages,
          information:"It is a zooming image located in: \n es_flutter_component>lib>es_image>es_zoomable_image.dart \n and is used as: \n "
              """EsZoomingImage(
              img: AssetImage("assets/images/img1.jpg"), )"""
      ),
      ContainerItems(
          widget:Container(
            child: Container(
              child: EsLightBoxShowing(
                path: "assets/images/img1.jpg",
              ),
              width: 300,
              height: 240,
            ),
            width: 300,
            height: 240,
          ),
          title:AppLocalizations.of(context)!.lightBoxShowingImage,
          information:"It is a light box showing image located in: \n es_flutter_component>lib>es_image>es_lightbox_showing_image.dart \n and is used as: \n "
              """EsLightBoxShowing(
                path: "assets/images/img1.jpg",)"""
      ),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryLightColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h0Padding),
                margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(
                   AppLocalizations.of(context)!.imageDescription,
                ),
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(StructureBuilder.dims!.h2FontSize))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  children: List.generate(
                      list.length, (index) => _boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget _boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical:StructureBuilder.dims!.h0Padding,
          ),
          margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h0Padding)),
              color: StructureBuilder.styles!.primaryDarkColor),
          child: widget,
        ));
  }

}
