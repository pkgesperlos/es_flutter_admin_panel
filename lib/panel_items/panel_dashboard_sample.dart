import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../editable_components/es_dashboard_card/es-social_network_chart.dart';
import '../editable_components/es_dashboard_card/es_content_card.dart';
import '../editable_components/es_dashboard_card/es_growth-bar-chart.dart';
import '../editable_components/es_dashboard_card/es_income_card.dart';
import '../editable_components/es_dashboard_card/es_new_users_card.dart';
import '../editable_components/es_dashboard_card/es_platform-linear-chart.dart';
import '../editable_components/es_dashboard_card/es_sales-bar-chart.dart';
import '../editable_components/es_dashboard_card/es_statistic_card_1.dart';
import '../editable_components/es_dashboard_card/es_statistic_card_2.dart';
import '../editable_components/es_dashboard_card/es_task_card.dart';
import '../editable_components/es_dashboard_card/es_ticket_card.dart';
import '../editable_components/es_dashboard_card/es_user_progress_bar.dart';

class PanelDashboardSample extends StatelessWidget {
  static const routeName = '/panelDashboardSample';

  const PanelDashboardSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _nameList = ["Steve", "Mark", "John", "David", "Jack"];
    List<Color> _colorList = [
      Colors.amber,
      Colors.lightGreen,
      Colors.indigo,
      Colors.pink,
      Colors.purple,
    ];
    List<TicketStatus> _statusList = [
      TicketStatus.successfull,
      TicketStatus.successfull,
      TicketStatus.unSuccessful,
      TicketStatus.pending,
      TicketStatus.pending,
    ];

    List<String> _descriptionList = List.generate(
      7,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<String> _titleList = List.generate(
      3,
      (index) => AppLocalizations.of(context)!.lormshort,
    );
    List<bool> _valueList = List.generate(7, (index) {
      if (index == 2) return true;
      if (index == 4) return true;
      return false;
    });

    Widget cardShow1(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-3', child: widget),
      );
    }

    Widget cardShow2(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget),
      );
    }

    Widget cardShow3(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget),
      );
    }

    Widget cardShow4(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget),
      );
    }

    List list = [
      ContainerItems(
          widget: Container(
            child: BootstrapContainer(
              fluid: true,
              // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              children: [

                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/profilecircle.svg",
                  number: "141414",
                  description: AppLocalizations.of(context)!.followers,
                  hasGrown: false,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/shoppingcart.svg",
                  number: "27.3%",
                  description: AppLocalizations.of(context)!.participationrate,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/dollarsquare.svg",
                  number: "33.36K",
                  changePercent: "17%",
                  description: AppLocalizations.of(context)!.adaccess,
                  hasGrown: false,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/favoritechart.svg",
                  number: "23.6K",
                  changePercent: "4.98%",
                  description: AppLocalizations.of(context)!.userengagement,
                )),
                cardShow2(
                  EsGrowthBarChart(),
                ),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/profilecircle.svg",
                  number: "141414",
                  description: AppLocalizations.of(context)!.newvisitorstoday,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/shoppingcart.svg",
                  number: "34143",
                  description: AppLocalizations.of(context)!.totalmonthlyorders,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/dollarsquare.svg",
                  number: "47834143",
                  description:
                  AppLocalizations.of(context)!.totalincomethisyear,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/favoritechart.svg",
                  number: "5543",
                  description: AppLocalizations.of(context)!.onlinemembership,
                )),
                cardShow2(EsPlatformLinearChart()),
                cardShow3(EsUserProgressBar()),
                cardShow3(
                  EsContentCard(),
                ),
                cardShow3(EsIncomeCard()),
                cardShow2(
                  EsSalesBarChart(),
                ),
                cardShow2(
                  EsTicketCard(
                    nameList: _nameList,
                    statusList: _statusList,
                    avatarColor: _colorList,
                  ),
                ),

                cardShow2(
                  EsNewUsersCard(
                    nameList: _nameList,
                  ),
                ),
                cardShow4(
                  EsTasksCard(
                    descriptionList: _descriptionList,
                    valueList: _valueList,
                  ),
                ),
                cardShow4(EsSocialNetworkChart()),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.dashboard,
          information: "these are dashboard cards in panel:"
              """Container(
            child: BootstrapContainer(
              fluid: true,
              // padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              children: [

                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/profilecircle.svg",
                  number: "141414",
                  description: AppLocalizations.of(context)!.followers,
                  hasGrown: false,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/shoppingcart.svg",
                  number: "27.3%",
                  description: AppLocalizations.of(context)!.participationrate,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/dollarsquare.svg",
                  number: "33.36K",
                  changePercent: "17%",
                  description: AppLocalizations.of(context)!.adaccess,
                  hasGrown: false,
                )),
                cardShow1(EsStatisticCard2(
                  imagePath: "assets/svgs/favoritechart.svg",
                  number: "23.6K",
                  changePercent: "4.98%",
                  description: AppLocalizations.of(context)!.userengagement,
                )),
                cardShow2(
                  EsGrowthBarChart(),
                ),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/profilecircle.svg",
                  number: "141414",
                  description: AppLocalizations.of(context)!.newvisitorstoday,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/shoppingcart.svg",
                  number: "34143",
                  description: AppLocalizations.of(context)!.totalmonthlyorders,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/dollarsquare.svg",
                  number: "47834143",
                  description:
                  AppLocalizations.of(context)!.totalincomethisyear,
                )),
                cardShow1(EsStatisticCard1(
                  imagePath: "assets/svgs/favoritechart.svg",
                  number: "5543",
                  description: AppLocalizations.of(context)!.onlinemembership,
                )),
                cardShow2(EsPlatformLinearChart()),
                cardShow2(
                  EsSalesBarChart(),
                ),
                cardShow2(
                  EsTicketCard(
                    nameList: _nameList,
                    statusList: _statusList,
                    avatarColor: _colorList,
                  ),
                ),
                cardShow3(EsUserProgressBar()),
                cardShow3(
                  EsContentCard(),
                ),
                cardShow3(EsIncomeCard()),
                cardShow2(
                  EsNewUsersCard(
                    nameList: _nameList,
                  ),
                ),
                cardShow4(
                  EsTasksCard(
                    descriptionList: _descriptionList,
                    valueList: _valueList,
                  ),
                ),
                cardShow4(EsSocialNetworkChart()),
              ],
            ),
          ),
                  
                  \n where \n
                   List<String> _nameList = ["Steve", "Mark", "John", "David", "Jack"];
    List<Color> _colorList = [
      Colors.amber,
      Colors.lightGreen,
      Colors.indigo,
      Colors.pink,
      Colors.purple,
    ];
    List<TicketStatus> _statusList = [
      TicketStatus.successfull,
      TicketStatus.successfull,
      TicketStatus.unSuccessful,
      TicketStatus.pending,
      TicketStatus.pending,
    ];

    List<String> _descriptionList = List.generate(
      7,
      (index) => AppLocalizations.of(context)!.lormmid,
    );
    List<String> _titleList = List.generate(
      3,
      (index) => AppLocalizations.of(context)!.lormshort,
    );
    List<bool> _valueList = List.generate(7, (index) {
      if (index == 2) return true;
      if (index == 4) return true;
      return false;
    });

    Widget cardShow1(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-6 col-ml-6 col-lg-4 col-xl-3', child: widget),
      );
    }

    Widget cardShow2(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget),
      );
    }

    Widget cardShow3(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget),
      );
    }

    Widget cardShow4(Widget widget) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
        ),
        child: BootstrapCol(
            sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget),
      );
    }
                  
                  """),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child: Scaffold(
          backgroundColor:
              StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // PageTitleContainer(
                //   title: AppLocalizations.of(context)!.dashboardtitle,
                // ),
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
