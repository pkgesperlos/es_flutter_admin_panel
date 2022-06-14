import 'package:es_flutter_component/constants.dart';

import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_responsive_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_slider/es_carousel_slider.dart';
import 'package:es_flutter_component/es_slider/es_perspective_slider.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_crm/images/panelConstants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../images/panelConstants.dart';

class PanelSlider extends StatelessWidget {
  Widget titleBox(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: PanelConstants.itemColor,
        borderRadius: BorderRadius.all(Radius.circular(PanelConstants.paddingDimension))
      ),
     child: Center(child: EsLableText(data: index.toString(),color: PanelConstants.itemcoupleColor,),),
    );
  }
  
  const PanelSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;
    List<Widget> widgetList = List.generate(
      20,
          (index) => titleBox(index),
    );
    List list = [
      Center(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(data:AppLocalizations.of(context)!.carouselSlider,size: 20,),
              ),
              Container(child: EsCarouselSlider(itemList: widgetList,),
                width: 300,
                height: 240,
              ),
            ],
          )),
      Center(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(data:AppLocalizations.of(context)!.persPectiveSlider,size: 20,),
              ),
              Container(child: EsPerspectiveSlider(itemList: widgetList,),
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
                padding: EdgeInsets.symmetric(vertical:PanelConstants.paddingDimension),
                margin: EdgeInsets.all(PanelConstants.paddingDimension * 2),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(data: "Hello World:)",),
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
