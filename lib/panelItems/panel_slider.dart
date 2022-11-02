import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_component/es_slider/es_carousel_slider.dart';
import 'package:es_flutter_component/es_slider/es_perspective_slider.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelSlider extends StatelessWidget {
  Widget titleBox(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryDarkColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0Padding))),
      child: Center(
        child: EsTitle(
          index.toString(),
          color: StructureBuilder.styles!.primaryDarkColor,
        ),
      ),
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
      ContainerItems(
          widget:Container(
            child: EsCarouselSlider(
              itemList: widgetList,
            ),
            width: 300,
            height: 240,
          ),
          title:AppLocalizations.of(context)!.carouselSlider,
          information:"It is a carousel slider located in: \n es_flutter_component>lib>es_slider>es_carousel_slider.dart \n and is used as: \n "
              """EsCarouselSlider(
              itemList: widgetList,)"""
      ),
      ContainerItems(
          widget:Container(
            child: EsPerspectiveSlider(
              itemList: widgetList,
            ),
            width: 300,
            height: 240,
          ),
          title:AppLocalizations.of(context)!.perspectiveSlider,
          information:"It is a perspective slider located in: \n es_flutter_component>lib>es_slider>es_perspective_slider.dart \n and is used as: \n "
              """EsPerspectiveSlider(
              itemList: widgetList,)"""
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
                child: EsOrdinaryText(
                  AppLocalizations.of(context)!.sliderDescription,
                ),
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(StructureBuilder.dims!.h2Padding))),
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
            vertical: StructureBuilder.dims!.h0Padding,
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
