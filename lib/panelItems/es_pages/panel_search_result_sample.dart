import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/es-search_result/es_search_result.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_tab_bar/es_top_tab_bar_navigation.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../panel_ui/components/es-search_result/es_article_search_card.dart';
import '../../panel_ui/components/es-search_result/es_image_search_card.dart';
import '../../panel_ui/components/es-search_result/es_user_search_card.dart';

class PanelSearchResultSample extends StatefulWidget {
  PanelSearchResultSample({Key? key}) : super(key: key);

  @override
  State<PanelSearchResultSample> createState() =>
      _PanelSearchResultSampleState();
}

class _PanelSearchResultSampleState extends State<PanelSearchResultSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 1000;

    int num = 4;
    int num2 = 20;
    List<String> _titleList = [
      AppLocalizations.of(context)!.classic,
      AppLocalizations.of(context)!.articles,
      AppLocalizations.of(context)!.users,
      AppLocalizations.of(context)!.images,
    ];
    List<Widget> _tabList = List.generate(
        num,
        (index) => EsTitle(
              _titleList[index],
              color: StructureBuilder.styles!.primaryColor,
            ));

    List<Widget> _articleCardList =
        List.generate(num2, (index) => EsArticleSearchCard());
    List<Widget> _iamgeCardList =
        List.generate(num2, (index) => EsImageSearchCard());
    List<Widget> _userCardList =
        List.generate(num2, (index) => EsUserSearchCard());

    List<Widget> _pageList = [
      EsSearchResult(
        num: num2,
        searchWord: AppLocalizations.of(context)!.lormshort,
      ),
      EsSearchResult(
        num: num2,
        searchWord: AppLocalizations.of(context)!.lormshort,
        cardWidgetList: _articleCardList,
      ),
      EsSearchResult(
        num: num2,
        searchWord: AppLocalizations.of(context)!.lormshort,
        cardWidgetList: _userCardList,
      ),
      EsSearchResult(
        num: num2,
        searchWord: AppLocalizations.of(context)!.lormshort,
        cardWidgetList: _iamgeCardList,
      ),

    ];

    List list = [
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            child: EsTopTabBarNavigation(
                pageWidgets: _pageList, tabWidgets: _tabList),
          ),
          title: AppLocalizations.of(context)!.searchresult,
          information: "They are search results "
              "and located in:"
              " \n es_flutter_component/lib/components/es-search_result/es_search_result.dart "
              "\n and is used as: \n "
              """EsTopTabBarNavigation(
                pageWidgets: _pageList, tabWidgets: _tabList),
          ),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.searchresulttitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(list.length, (index) {
                    if (index == list.length - 1)
                      return boxShow2(list[index]);
                    else
                      return boxShow(list[index]);
                  })
                  // children: [boxShow(list[0]),boxShow2(list[1]),],

                  )
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget);
  }

  Widget boxShow2(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
