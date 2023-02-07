import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_label/es_content_label.dart';
import 'package:es_flutter_components/components/es_label/es_label.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:es_flutter_components/components/es_navigation_bar/es_navigation_bar.dart';

class PanelNavigationBarSample extends StatefulWidget {

  static const routeName = '/panelNavigationBarSample';

  PanelNavigationBarSample({Key? key}) : super(key: key);

  @override
  State<PanelNavigationBarSample> createState() =>
      _PanelNavigationBarSampleState();
}

class _PanelNavigationBarSampleState extends State<PanelNavigationBarSample> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int num = 3;

    List<Function()> _functionList = List.generate(
        num,
        (index) => () {
              _controller.jumpTo(
                500,
              );
            });
    List<Widget> _tabList = List.generate(
        num,
        (index) => EsTitle(
              "Tab${index + 1}",
              color: StructureBuilder.styles!.primaryDarkColor,
            ));
    List<Widget> _buttonTabList = List.generate(
        num,
        (index) => EsButton(
              text: "Tab${index + 1}",
              clickable: false,
            ));
    List<Widget> _buttonTabList2 = List.generate(num, (index) {
      if (index == 2) {
        return EsButton(
          disable: true,
          fillColor: StructureBuilder.styles!.secondaryColor,
          text: "Tab${index + 1}",
          clickable: false,
        );
      }
      return EsButton(
        text: "Tab${index + 1}",
        clickable: false,
      );
    });

    List<Widget> _complexTabList = List.generate(num, (index) {
      if (index == 1) {
        return EsLabel(
          isUnique: false,
          widget: EsOrdinaryText(
            AppLocalizations.of(context)!.text,
          ),
        );
      } else
        return EsContentLabel(
          isUnique: true,
          size: StructureBuilder.dims!.h3IconSize,
          text: "error",
        );
    });

    BoxDecoration _activeDecoration = BoxDecoration(
      border: Border(
        top: BorderSide(color: StructureBuilder.styles!.t4Color),
        right: BorderSide(color: StructureBuilder.styles!.t4Color),
        left: BorderSide(color: StructureBuilder.styles!.t4Color),
      ),
    );
    BoxDecoration _inActiveDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(color: StructureBuilder.styles!.t4Color),
      ),
    );

    double _height = 200;

    List list = [
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                    functionList: _functionList, tabWidgetList: _tabList)),
          ),
          title: AppLocalizations.of(context)!.simplenavigationbar,
          information: "It is a simple navigation bar located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _tabList)"""
              " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
         List<Widget> _tabList = List.generate(
         num,
            (index) => EsTitle(
          "Tab\${index + 1}",
          color: StructureBuilder.styles!.primaryDarkColor,
        ));"""),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                  functionList: _functionList,
                  tabWidgetList: _tabList,
                  activeDecoration: _activeDecoration,
                  inActiveDecoration: _inActiveDecoration,
                )),
          ),
          title: AppLocalizations.of(context)!.tabbarnavigator,
          information: "It is a tabbar navigation bar located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _tabList,
                  activeDecoration: _activeDecoration,
                  inActiveDecoration: _inActiveDecoration,
                )""" " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
    List<Widget> _tabList = List.generate(
        num,
            (index) => EsTitle(
          "Tab\${index + 1}",
          color: StructureBuilder.styles!.primaryDarkColor,
        ));
    

    BoxDecoration _activeDecoration = BoxDecoration(
      border: Border(
        top: BorderSide(color: StructureBuilder.styles!.t4Color),
        right: BorderSide(color: StructureBuilder.styles!.t4Color),
        left: BorderSide(color: StructureBuilder.styles!.t4Color),
      ),
    );
    BoxDecoration _inActiveDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(color: StructureBuilder.styles!.t4Color),
      ),
    );"""),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList)),
          ),
          title: AppLocalizations.of(context)!.buttonnavigationbar,
          information: "It is a button navigation bar located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList)"""
              " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
   
    List<Widget> _buttonTabList = List.generate(
        num,
            (index) => EsButton(
          text: "Tab \${index + 1}",
          clickable: false,
        ));
  """),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList2)),
          ),
          title: AppLocalizations.of(context)!.navigationbarwithinactivebutton,
          information: "It is a Navigation bar with inactive Button located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList2),
          ),"""
              " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
   
    List<Widget> _buttonTabList2 = List.generate(num, (index) {
      if (index == 2) {
        return EsButton(
          disable: true,
          fillColor: StructureBuilder.styles!.secondaryColor,
          text: "Tab \${index + 1}",
          clickable: false,
        );
      }
      return EsButton(
        text: "Tab \${index + 1}",
        clickable: false,
      );
    });

 """),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                    isExpanded: true,
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList)),
          ),
          title: AppLocalizations.of(context)!.expandednavigationbar,
          information: "It is a simple navigation bar located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList)"""
              " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
    
    List<Widget> _buttonTabList = List.generate(
        num,
            (index) => EsButton(
          text: "Tab \${index + 1}",
          clickable: false,
        ));
  
"""
      ),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                    direction: Axis.vertical,
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList)),
          ),
          title: AppLocalizations.of(context)!.verticalnavigationbar,
          information: "It is a vertical navigation bar located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    direction: Axis.vertical,
                    functionList: _functionList,
                    tabWidgetList: _buttonTabList
          ),"""        " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
    
    List<Widget> _buttonTabList = List.generate(
        num,
            (index) => EsButton(
          text: "Tab \${index + 1}",
          clickable: false,
        ));
  
"""),
      ContainerItems(
          widget: Center(
            child: Container(
                alignment: Alignment.topCenter,
                height: _height,
                child: EsNavigationBar(
                  functionList: _functionList,
                  tabWidgetList: _complexTabList,
                )),
          ),
          title: AppLocalizations.of(context)!.navigationbarwithcustomwidget,
          information: "It is a navigation bar with custom widget located in:"
              " \n es_flutter_component/lib/components/es_navigation_bar/es_navigation_bar.dart' \n"
              " and is used as: \n "
              """EsNavigationBar(
                    functionList: _functionList,
                    tabWidgetList: _complexTabList)"""
              " \n   where \n"
              """
          int num = 3;

          List<Function()> _functionList = List.generate(
          num,
              (index) => () {
            _controller.jumpTo(
              500,
            );
          });
    
    List<Widget> _complexTabList = List.generate(num, (index) {
      if (index == 1) {
        return EsLabel(
          isUnique: false,
          widget: EsOrdinaryText(
            AppLocalizations.of(context)!.text,
          ),
        );
      } else
        return EsContentLabel(
          isUnique: true,
          size: StructureBuilder.dims!.h3IconSize,
          text: "error",
        );
    });
  
"""),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.navigationbartitle,
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
