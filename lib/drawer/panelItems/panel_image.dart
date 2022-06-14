import 'package:es_flutter_component/constants.dart';

import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_lightbox_showing_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_crm/images/panelConstants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../images/panelConstants.dart';

class PanelImage extends StatelessWidget {
  const PanelImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;
    List list = [
      Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EsDottedText(
                  data: AppLocalizations.of(context)!.avatarImages,
                  size: 20,
                  color: PanelConstants.itemColor),
            ),
            EsAvatarImage(
              path: "assets/images/img1.jpg",
              radius: 100,
            ),
          ],
        ),
      ),
      Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.zoomingImages,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Container(
            child: EsZoomingImage(
              img: AssetImage("assets/images/img1.jpg"),
            ),
            width: 300,
            height: 240,
          ),
        ],
      )),
      Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.lightBixShowingImages,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Container(
            child: EsLightBoxShowing(
               path:"assets/images/img1.jpg",
            ),
            width: 300,
            height: 240,
          ),
        ],
      )),
    ];
    return Material(
        color: PanelConstants.backGround,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: PanelConstants.paddingDimension),
                margin: EdgeInsets.all(PanelConstants.paddingDimension * 2),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(
                  data:AppLocalizations.of(context)!.imageDescription ,
                ),
                decoration: BoxDecoration(
                    color: PanelConstants.forGround,
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.paddingDimension))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(PanelConstants.paddingDimension),
                  decoration: BoxDecoration(
                    color: PanelConstants.backGround,
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
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: PanelConstants.paddingDimension,
            vertical: PanelConstants.paddingDimension * 5,
          ),
          margin: EdgeInsets.all(PanelConstants.paddingDimension),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: PanelConstants.forGround),
          child: widget,
        ));
  }
}
