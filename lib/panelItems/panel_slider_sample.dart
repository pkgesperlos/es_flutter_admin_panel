import 'package:carousel_slider/carousel_slider.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart' as intl;

//carouselSlider and  packages are used
class PanelSliderSample extends StatefulWidget {
  PanelSliderSample({Key? key}) : super(key: key);

  @override
  State<PanelSliderSample> createState() => _PanelSliderSampleState();
}

class _PanelSliderSampleState extends State<PanelSliderSample> {
  CarouselController carouselController = CarouselController();
  int _current = 0;

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
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

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
            ),"""),
      ContainerItems(
          widget: Container(
            height: 250,
            child: Center(
              child: CarouselSlider(
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
            ),"""),
      ContainerItems(
          widget: Container(
            height: 250,
            child: Stack(
              children: [
                Center(
                  child: CarouselSlider(
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
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                EsVSpacer(),
                Align(
                  alignment: Alignment(0, 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widgetList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                            width: StructureBuilder.dims!.h1Padding,
                            height: StructureBuilder.dims!.h1Padding,
                            margin: EdgeInsets.symmetric(
                                horizontal: StructureBuilder.dims!.h3Padding),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == entry.key
                                    ? StructureBuilder.styles!.tritiaryColor
                                    : StructureBuilder
                                        .styles!.primaryLightColor)),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.carouselsliderwithindicator,
          information:
              "It is a carousel slider with indicator that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """Stack(
              children: [
                CarouselSlider(
                  carouselController: carouselController,
                  items: widgetList,

                  options: CarouselOptions(
                      viewportFraction: 0.5,
                      // height: 270,
                      initialPage: 2,
                      disableCenter: true,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 100),
                      // aspectRatio: 0.1,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }
                  ),
                ),
                EsVSpacer(),
            Align(
              alignment: Alignment(0,0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widgetList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: StructureBuilder.dims!.h1Padding,
                      height:StructureBuilder.dims!.h1Padding,
                      margin: EdgeInsets.symmetric(
                          horizontal: StructureBuilder.dims!.h3Padding
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:_current == entry.key
                              ? StructureBuilder.styles!.tritiaryColor
                              : StructureBuilder.styles!.primaryLightColor)
                    ),
                  );
                }).toList(),
              ),
            )
              ],
            ),"""),
      ContainerItems(
          widget: Container(
            height: 250,
            child: Stack(
              children: [
                Center(
                  child: CarouselSlider(
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
                ),
                Align(
                  alignment: Alignment(0, 0.5),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: EsSvgIcon(
                            _rtl
                                ? "assets/svgs/CaretRight.svg"
                                : "assets/svgs/CaretLeft.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding * 2,
                          ),
                          onTap: () {
                            carouselController.previousPage();
                          },
                        ),
                        InkWell(
                          child: EsSvgIcon(
                            _rtl
                                ? "assets/svgs/CaretLeft.svg"
                                : "assets/svgs/CaretRight.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding * 2,
                          ),
                          onTap: () {
                            carouselController.nextPage();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.carouselsliderwithicon,
          information:
              "It is a carousel slider with icon that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """Stack(
              children: [
                CarouselSlider(
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
                Align(
                  alignment: Alignment(0,0.5),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(

                            child: EsSvgIcon(
                              _rtl?"assets/svgs/CaretRight.svg"
                                :"assets/svgs/CaretLeft.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                              size: StructureBuilder.dims!.h0Padding*2,
                            ),
                        onTap: (){carouselController.previousPage();},
                        ),
                        InkWell(

                          child: EsSvgIcon(_rtl?"assets/svgs/CaretLeft.svg"
                              :"assets/svgs/CaretRight.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding*2,
                          ),
                          onTap: (){carouselController.nextPage();},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),"""),
      ContainerItems(
          widget: Container(
            height: 250,
            child: Stack(
              children: [
                Center(
                  child: CarouselSlider(
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
                ),
                Align(
                  alignment: Alignment(0, 0.8),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: EsSvgIcon(
                            _rtl
                                ? "assets/svgs/CaretRight.svg"
                                : "assets/svgs/CaretLeft.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding,
                          ),
                          onTap: () {
                            carouselController.previousPage();
                          },
                        ),
                        InkWell(
                          child: EsSvgIcon(
                            _rtl
                                ? "assets/svgs/CaretLeft.svg"
                                : "assets/svgs/CaretRight.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding,
                          ),
                          onTap: () {
                            carouselController.nextPage();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widgetList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                            width: StructureBuilder.dims!.h1Padding,
                            height: StructureBuilder.dims!.h1Padding,
                            margin: EdgeInsets.symmetric(
                                horizontal: StructureBuilder.dims!.h3Padding),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == entry.key
                                    ? StructureBuilder.styles!.tritiaryColor
                                    : StructureBuilder
                                        .styles!.primaryLightColor)),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
          title:
              AppLocalizations.of(context)!.carouselsliderwithindicatorandicon,
          information:
              "It is a carousel slider with indicator and icon that the package should be added in pubspec.yaml 's dependencies \n and is used as: \n "
              """Stack(
              children: [
                CarouselSlider(
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
                Align(
                  alignment: Alignment(0,0.8),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(

                            child: EsSvgIcon(
                              _rtl?"assets/svgs/CaretRight.svg"
                                :"assets/svgs/CaretLeft.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                              size: StructureBuilder.dims!.h0Padding,
                            ),
                        onTap: (){carouselController.previousPage();},
                        ),
                        InkWell(

                          child: EsSvgIcon(_rtl?"assets/svgs/CaretLeft.svg"
                              :"assets/svgs/CaretRight.svg",
                            color: StructureBuilder.styles!.primaryLightColor,
                            size: StructureBuilder.dims!.h0Padding,
                          ),
                          onTap: (){carouselController.nextPage();},
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0,0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widgetList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => carouselController.animateToPage(entry.key),
                        child: Container(
                            width: StructureBuilder.dims!.h1Padding,
                            height:StructureBuilder.dims!.h1Padding,
                            margin: EdgeInsets.symmetric(
                                horizontal: StructureBuilder.dims!.h3Padding
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:_current == entry.key
                                    ? StructureBuilder.styles!.tritiaryColor
                                    : StructureBuilder.styles!.primaryLightColor)
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
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
