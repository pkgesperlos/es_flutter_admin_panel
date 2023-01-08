
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_label/es_label.dart';
import 'package:es_flutter_component/components/es_tab_bar/es_bottom_tab_bar_navigation.dart';
import 'package:es_flutter_component/components/es_tab_bar/es_side_tab_bar_navigation.dart';
import 'package:es_flutter_component/components/es_tab_bar/es_top_tab_bar_navigation.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelTabBarNavigationSample extends StatefulWidget {

  static const routeName = '/panelTabBarNavigationSample';

  PanelTabBarNavigationSample({Key? key}) : super(key: key);

  @override
  State<PanelTabBarNavigationSample> createState() =>
      _PanelTabBarNavigationSampleState();
}

class _PanelTabBarNavigationSampleState
    extends State<PanelTabBarNavigationSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int num=3;
    List<Widget> _tabList=List.generate(num, (index) => EsTitle("Tab${index+1}",
      color: StructureBuilder.styles!.primaryDarkColor,
    ));

    List<Widget> _complexTabList=List.generate(num, (index) {
      if(index==1){
        return EsLabel(
          isUnique: false,
          widget: EsOrdinaryText(
            AppLocalizations.of(context)!.text,
          ),
        );
      }else
      return EsContentLabel(
        isUnique: true,
        size: StructureBuilder.dims!.h3IconSize,
        text: "error",
      );
    }
    );

    List<Widget> _pageList=List.generate(num, (index) => Container(
      height: double.infinity,
      color: StructureBuilder.styles!.primaryLightColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          color: StructureBuilder.styles!.primaryDarkColor,
            size: StructureBuilder.dims!.h2IconSize,
          ),
          EsTitle("Page${index+1}",
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
        ],
      ),
    ));

    List list = [
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsTopTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )),
          ),
          title: AppLocalizations.of(context)!.toptabbarnavigator,
          information:
              "It is top tab bar navigator located in: \n es_flutter_component/lib/components/es_tab_bar/es_top_tab_bar_navigation.dart' \n and is used as: \n "
              """EsTopTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                ),
             \n   where \n
    int num=3;
    List<Widget> _tabList=List.generate(num, (index) => EsTitle("Tab\${index+1}",
      color: StructureBuilder.styles!.primaryDarkColor,
    ));
    List<Widget> _pageList=List.generate(num, (index) => Container(
      height: double.infinity,
      color: StructureBuilder.styles!.primaryLightColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          color: StructureBuilder.styles!.primaryDarkColor,
            size: StructureBuilder.dims!.h2IconSize,
          ),
          EsTitle("Page\${index+1}",
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
        ],
      ),
    ));
                """),
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsTopTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList,
                  selectedWidget:(int index){
                    return EsTitle("Tab${index+1}",
                      color: StructureBuilder.styles!.primaryLightColor,
                    );
                  },
                  selectedTabDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius))
                  ),
                )),
          ),
          title: AppLocalizations.of(context)!.tabbarnavigatorwithdesiredtabdecoration,
          information:
          "It is tab bar navigator with desired tab decoration located in: \n es_flutter_component/lib/components/es_tab_bar/es_top_tab_bar_navigation.dart' \n and is used as: \n "
              """EsTopTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList,
                  selectedWidget:(int index){
                    return EsTitle("Tab{index+1}",
                      color: StructureBuilder.styles!.primaryLightColor,
                    );
                  },
                  selectedTabDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius))
                  ),
                )
                    \n   where \n
    int num=3;
    List<Widget> _tabList=List.generate(num, (index) => EsTitle("Tab\${index+1}",
      color: StructureBuilder.styles!.primaryDarkColor,
    ));
    List<Widget> _pageList=List.generate(num, (index) => Container(
      height: double.infinity,
      color: StructureBuilder.styles!.primaryLightColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          color: StructureBuilder.styles!.primaryDarkColor,
            size: StructureBuilder.dims!.h2IconSize,
          ),
          EsTitle("Page\${index+1}",
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
        ],
      ),
    ));
               """),
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsTopTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _complexTabList,

                )),
          ),
          title: AppLocalizations.of(context)!.tabbarnavigatorwithdesiredwidgetintabs,
          information:
          "It is tab bar navigator with desired widget in tabs located in: \n es_flutter_component/lib/components/es_tab_bar/es_top_tab_bar_navigation.dart' \n and is used as: \n "
              """EsTopTabBarNavigation(
                  pageWidgets:_pageList,l
                  tabWidgets: _tabList,
                  selectedWidget:(int index){
                    return EsTitle("Tab{index+1}",
                      color: StructureBuilder.styles!.primaryLightColor,
                    );
                  },
                  selectedTabDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius))
                  ),
                ),
                   \n   where \n
                   List<Widget> _complexTabList=List.generate(num, (index) {
      if(index==1){
        return EsLabel(
          isUnique: false,
          widget: EsOrdinaryText(
            AppLocalizations.of(context)!.text,
          ),
        );
      }else
      return EsContentLabel(
        isUnique: true,
        size: StructureBuilder.dims!.h3IconSize,
        text: "error",
      );
    }
    );
              List<Widget> _pageList=List.generate(num, (index) => Container(
      height: double.infinity,
      color: StructureBuilder.styles!.primaryLightColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          color: StructureBuilder.styles!.primaryDarkColor,
            size: StructureBuilder.dims!.h2IconSize,
          ),
          EsTitle("Page\${index+1}",
            color: StructureBuilder.styles!.primaryDarkColor,
          ),
        ],
      ),
    ));   """),
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsBottomTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )),
          ),
          title: AppLocalizations.of(context)!.bottomtabbarnavigator,
          information:
          "It is Bottom tab navigator located in: \n es_flutter_component/lib/components/es_tab_bar/es_Bottom_tab_bar_navigation.dart' \n and is used as: \n "
              """EsBottomTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )"""),
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsSideTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )),
          ),
    title: AppLocalizations.of(context)!.leftsidetabbarnavigator,
    information:
    "It is Left side tab bar navigator located in: \n es_flutter_component/lib/components/es_tab_bar/es_Side_tab_bar_navigation.dart' \n and is used as: \n "
    """EsSideTabBarNavigation(
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )"""),
      ContainerItems(
          widget: Center(
            child: SizedBox(
                width:300,
                height: 300,

                child: EsSideTabBarNavigation(
                  isleft: false,
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )),
          ),
          title: AppLocalizations.of(context)!.rightsidebarnavigator,
          information:
          "It is Right side tab bar navigator located in: \n es_flutter_component/lib/components/es_tab_bar/es_Side_tab_bar_navigation.dart' \n and is used as: \n "
              """EsSideTabBarNavigation(
                  isleft: false,
                  pageWidgets:_pageList,
                  tabWidgets: _tabList
                )"""),
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
                  title: AppLocalizations.of(context)!.tabbartitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,
                    ),
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
        sizes: 'col-sm-12 col-ml-6 col-lg-12 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
