import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es-chart/es_bar_chart.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../editable_components/es_card/es_image_card/es_image_card_1.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_2.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_3.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_4.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_5.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_6.dart';
import '../../../editable_components/es_card/es_image_card/es_image_card_7.dart';
import '../../editable_components/es-search_result/es-linear-chart.dart';
import '../../editable_components/es_dashboard_card/es_statistic_card_1.dart';
import '../../editable_components/es_dashboard_card/es_statistic_card_2.dart';

class PanelDashboardSample extends StatelessWidget {

  static const routeName = '/panelDashboardSample';

  const PanelDashboardSample({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Widget cardShow(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-6 col-ml-6 col-lg-4 col-xl-2', child: widget);
    }
    Widget cardShow2(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-6 col-ml-6 col-lg-4 col-xl-3', child: widget);
    }
    List list = [
      ContainerItems(
          widget: Container(
              child: BootstrapContainer(
                  fluid: true,
                  // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  children: [
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/profilecircle.svg",
                      number: "141414",
                      description: "بازدید کنندگان جدید امروز",
                    )),
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/shoppingcart.svg",
                      number: "34143",
                      description: "مجموع سفارشات ماهانه",
                    )),
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/dollarsquare.svg",
                      number: "47834143",
                      description: "درآمد کل امسال",

                    )),
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/favoritechart.svg",
                      number: "5543",
                      description: "عضویت آنلاین",
                    )),
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/dollarsquare.svg",
                      number: "47834143",
                      description: "درآمد کل امسال",

                    )),
                    cardShow(EsStatisticCard1(
                      imagePath: "assets/svgs/favoritechart.svg",
                      number: "5543",
                      description: "عضویت آنلاین",
                    )),
                    EsLinearChart(),
                    cardShow2(EsStatisticCard2(
                      imagePath: "assets/svgs/profilecircle.svg",
                      number: "141414",
                      description: "بازدید کنندگان جدید امروز",
                    )),
                    cardShow2(EsStatisticCard2(
                      imagePath: "assets/svgs/shoppingcart.svg",
                      number: "34143",
                      description: "مجموع سفارشات ماهانه",
                    )),
                    cardShow2(EsStatisticCard2(
                      imagePath: "assets/svgs/dollarsquare.svg",
                      number: "47834143",
                      description: "درآمد کل امسال",

                    )),
                    cardShow2(EsStatisticCard2(
                      imagePath: "assets/svgs/favoritechart.svg",
                      number: "5543",
                      description: "عضویت آنلاین",
                    )),



                  ],),),
          title: AppLocalizations.of(context)!.dashboard,
          information: "these are image cards in panel:"
              """Container(
              child: BootstrapContainer(
                  fluid: true,
                  // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  children: [
                    cardShow(EsImageCard1()),
                    cardShow(EsImageCard2()),
                    cardShow(EsImageCard3()),
                    cardShow(EsImageCard4()),
                    cardShow(EsImageCard5()),
                    cardShow(EsImageCard6()),
                    cardShow(EsImageCard7()),
                  ],),),
                  
                  \n where \n
                   Widget cardShow(Widget widget) {
      return BootstrapCol(
          sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
                   }
                  
                  """



      ),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.dashboard,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
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


