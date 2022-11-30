
import 'package:es_flutter_component/components/es_page_indicator/es_number_page_indicator.dart';
import 'package:es_flutter_component/components/es_page_indicator/es_page_indicator.dart';
import 'package:es_flutter_component/components/es_page_indicator/es_sample_page_maker.dart';
import 'components/container_items.dart';
import 'components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelPageIndicatorSample extends StatefulWidget {
  PanelPageIndicatorSample({Key? key}) : super(key: key);

  @override
  State<PanelPageIndicatorSample> createState() =>
      _PanelPageIndicatorSampleState();
}

class _PanelPageIndicatorSampleState extends State<PanelPageIndicatorSample> {
  final PageController controller = PageController(initialPage: 0);
  int totalPage = 7;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = 0;
  }

  void _pageChanged(int index) {
    setState(() {
      currentPage =
          controller.page != null ? controller.page!.round() % totalPage : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
            child: Column(
              children: [
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                  normalColor: StructureBuilder.styles!.t2Color,
                  selectedColor: StructureBuilder.styles!.primaryColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                  size: StructureBuilder.dims!.h3IconSize * 0.5,
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.simplepageindicator,
          information:
              "It is simple page indicator located in: \n es_flutter_component/es_page_indicator/es_slide_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
              ),"""),
      ContainerItems(
          widget: Container(
            child: Column(
              children: [
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                  hasButton: true,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                  hasButton: true,
                  normalColor: StructureBuilder.styles!.t2Color,
                  selectedColor: StructureBuilder.styles!.primaryColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsPageIndicator(
                  controller: controller,
                  totalPage: totalPage,
                  hasButton: true,
                  size: StructureBuilder.dims!.h3IconSize * 0.5,
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.simplepageindicatorwithbutton,
          information:
              "It is simple page indicator with button located in: \n es_flutter_component/es_page_indicator/es_slide_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),"""),
      ContainerItems(
          widget: Container(
            child: Column(
              children: [
                EsNumberPageIndicator.simple(
                  controller: controller,
                  totalPage: totalPage,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsNumberPageIndicator.simple(
                  controller: controller,
                  totalPage: totalPage,
                  fillColor: StructureBuilder.styles!.primaryColor,
                  textColor: StructureBuilder.styles!.primaryLightColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsNumberPageIndicator.simple(
                  controller: controller,
                  totalPage: totalPage,
                  size: StructureBuilder.dims!.h3IconSize,
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.numberpageindicator,
          information:
              "It is number page indicator located in: \n es_flutter_component/es_page_indicator/es_number_page_indicator.dart\n and is used as: \n "
              """ EsNumberPageIndicator.simple(
                controller: controller,
                totalPage: totalPage,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsNumberPageIndicator.simple(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),
              EsVSpacer(
                big: true,
                factor: 3,
              ),
              EsNumberPageIndicator.simple(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
                fillColor: StructureBuilder.styles!.primaryColor,
                textColor: StructureBuilder.styles!.primaryLightColor,
              ),
              EsVSpacer(
                big: true,
                factor: 3,
              ),
              EsNumberPageIndicator.simple(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
                size: StructureBuilder.dims!.h3IconSize,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.numberpageindicatorwithbutton,
          information:
              "It is number page indicator with button located in: \n es_flutter_component/es_page_indicator/es_number_page_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),"""),
      ContainerItems(
          widget: Container(
            child: Column(
              children: [
                EsNumberPageIndicator.limited(
                  controller: controller,
                  totalPage: totalPage,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsNumberPageIndicator.limited(
                  controller: controller,
                  totalPage: totalPage,
                  fillColor: StructureBuilder.styles!.primaryColor,
                  textColor: StructureBuilder.styles!.primaryLightColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsNumberPageIndicator.limited(
                  controller: controller,
                  totalPage: totalPage,
                  size: StructureBuilder.dims!.h3IconSize,
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!
              .numberpageindicatorwithbuttonandlimitation,
          information:
              "It is number page indicator with button and limitation located in: \n es_flutter_component/es_page_indicator/es_number_page_indicator.dart\n and is used as: \n "
              """ EsNumberPageIndicator.limited(
                controller: controller,
                totalPage: totalPage,
              ),"""),
    ];

    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.pageindicator,
              ),
              SizedBox(
                height: StructureBuilder.dims!.h0Padding * 20,
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: EdgeInsets.all(
                            StructureBuilder.dims!.h0Padding * 2),
                        child: PageView.builder(
                          itemCount: totalPage,
                          onPageChanged: _pageChanged,
                          controller: controller,
                          itemBuilder: (context, index) {
                            return EsSamplePageMaker(
                              pageNum: index + 1,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index]))),
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
