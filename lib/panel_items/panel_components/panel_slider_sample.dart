import 'package:carousel_slider/carousel_slider.dart';

import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:es_flutter_component/components/es_slider/es_slider_with_icon.dart';
import 'package:es_flutter_component/components/es_slider/es_slider_with_icon_indicator.dart';
import 'package:es_flutter_component/components/es_slider/es_slider_with_indicator.dart';

//carouselSlider and  packages are used
class PanelSliderSample extends StatefulWidget {

  static const routeName = '/panelSliderSample';

  PanelSliderSample({Key? key}) : super(key: key);

  @override
  State<PanelSliderSample> createState() => _PanelSliderSampleState();
}

class _PanelSliderSampleState extends State<PanelSliderSample> {
  CarouselController carouselController1 = CarouselController();
  CarouselController carouselController2 = CarouselController();
  CarouselController carouselController3 = CarouselController();
  CarouselController carouselController4 = CarouselController();
  CarouselController carouselController5 = CarouselController();

  Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img${index + 1}.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = List.generate(
      3,
      (index) => titleBox(index),
    );
    List list = [
      ContainerItems(
          widget: Container(
            height: 250,
            child: Center(
              child: CarouselSlider(
                carouselController: carouselController1,
                items: widgetList,
                options: CarouselOptions(
                    viewportFraction: 0.8,
                    // height: 270,
                    initialPage: 2,
                    disableCenter: true,
                    // aspectRatio: 0.1,
                    enlargeCenterPage: true),
              ),
            ),
          ),
          title: AppLocalizations.of(context)!
              .simplecarouselsliderwithoutanimation,
          information:
              "It is a simple carousel slider without animation that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """CarouselSlider(
              carouselController: carouselController,
              items: widgetList,

              options: CarouselOptions(
                  viewportFraction: 0.8,
                  // height: 270,
                  initialPage: 2,
                  disableCenter: true,
                  // aspectRatio: 0.1,
                  enlargeCenterPage: true),
            ),
          \n   where \n
   CarouselController carouselController1 = CarouselController();       
    Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img\$\{index \+ 1\}.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
       List<Widget> widgetList = List.generate(
      3,
      (index) => titleBox(index),
    );   
            """),
      ContainerItems(
          widget: Container(
            height: 250,
            child: Center(
              child: CarouselSlider(
                carouselController: carouselController2,
                items: widgetList,
                options: CarouselOptions(
                    viewportFraction: 0.8,
                    // height: 270,
                    initialPage: 2,
                    disableCenter: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    // aspectRatio: 0.1,
                    enlargeCenterPage: true),
              ),
            ),
          ),
          title: AppLocalizations.of(context)!.carouselsliderwithanimation,
          information:
              "It is a carousel slider with animation that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """CarouselSlider(
              carouselController: carouselController,
              items: widgetList,

              options: CarouselOptions(
                  viewportFraction: 0.8,
                  // height: 270,
                  initialPage: 2,
                  disableCenter: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 100),
                  // aspectRatio: 0.1,
                  enlargeCenterPage: true),
            ),
               \n   where \n
    CarouselController carouselController2 = CarouselController();            
    Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img\$\{index \+ 1\}.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
       List<Widget> widgetList = List.generate(
      3,
      (index) => titleBox(index),
    );   
            """),
      ContainerItems(
          widget: Container(
              height: 250,
              child: EsSliderWithIndicator(
                controller: carouselController3,
                items: widgetList,
              )),
          title: AppLocalizations.of(context)!.carouselsliderwithindicator,
          information:
              "It is a carousel slider with indicator that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """EsSliderWithIndicator(
              controller: carouselController,
              items: widgetList,)
             \n   where \n
    CarouselController carouselController3 = CarouselController();            
    Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img\$\{index \+ 1\}.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
       List<Widget> widgetList = List.generate(
      3,
      (index) => titleBox(index),
    );   
         """),
      ContainerItems(
          widget: Container(
              height: 250,
              child: EsSliderWithIcon(
                controller: carouselController4,
                items: widgetList,
              )),
          title: AppLocalizations.of(context)!.carouselsliderwithicon,
          information:
              "It is a carousel slider with icon that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """ EsSliderWithIcon(
              controller: carouselController,
              items: widgetList,)
               \n   where \n
    CarouselController carouselController4 = CarouselController();            
    Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img\$\{index \+ 1\}.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
       List<Widget> widgetList = List.generate(
      3,
      (index) => titleBox(index),
    );   
         """),
      ContainerItems(
          widget: Container(
              height: 250,
              child: EsSliderWithIconIndicator(
                controller: carouselController5,
                items: widgetList,
              )),
          title:
              AppLocalizations.of(context)!.carouselsliderwithindicatorandicon,
          information:
              "It is a carousel slider with indicator and icon that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """EsSliderWithIconIndicator(
              controller: carouselController5,
              items: widgetList,)
                \n   where \n
    CarouselController carouselController5 = CarouselController();            
    Widget titleBox(int index) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        "assets/images/img\$\{index \+ 1\}.jpg",
        fit: BoxFit.cover,
      ),
    );"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.slidertitle,
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
