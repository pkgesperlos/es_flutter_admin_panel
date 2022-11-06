import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_page_indicator/es_number_page_indicator.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_page_indicator/es_page_indicator.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_page_indicator/es_sample_page_maker.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
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
              child:     EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
              ),),
          title: "simple page indicator",
          information:
              "It is simple page indicator located in: \n es_flutter_component/es_page_indicator/es_page_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
              ),"""),
      ContainerItems(
          widget: Container(
              child: EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),),
          title: "simple page indicator with button",
          information:
          "It is simple page indicator with button located in: \n es_flutter_component/es_page_indicator/es_page_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),"""),

      ContainerItems(
          widget: Container(
              child: EsNumberPageIndicator.simple(
                controller: controller,
                totalPage: totalPage,
              ),),
          title: "number page indicator",
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
            ],
          )),
          title: "number page indicator with button ",
          information:
          "It is number page indicator with button located in: \n es_flutter_component/es_page_indicator/es_number_page_indicator.dart\n and is used as: \n "
              """ EsPageIndicator(
                controller: controller,
                totalPage: totalPage,
                hasButton: true,
              ),"""),

      ContainerItems(
          widget: Container(
              child: EsNumberPageIndicator.limited(
                controller: controller,
                totalPage: totalPage,
              ),),
          title: "number page indicator with button and limitation",
          information: "It is number page indicator with button and limitation located in: \n es_flutter_component/es_page_indicator/es_number_page_indicator.dart\n and is used as: \n "
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
                title: AppLocalizations.of(context)!.alerttitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
