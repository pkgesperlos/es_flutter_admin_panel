import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsTopTabBarNavigation extends StatefulWidget {
  List<Widget> tabWidgets;
  List<Widget> pageWidgets;
  Widget Function(int)? selectedWidget;
  BoxDecoration? selectedTabDecoration;
  BoxDecoration? unSelectedTabDecoration;
  double? tabBarRatio;

  EsTopTabBarNavigation({
    Key? key,
    required this.tabWidgets,
    required this.pageWidgets,
    this.selectedWidget,
    this.selectedTabDecoration,
    this.unSelectedTabDecoration,
    this.tabBarRatio,
  }) : super(key: key);

  @override
  _EsTopTabBarNavigationState createState() => _EsTopTabBarNavigationState();
}

class _EsTopTabBarNavigationState extends State<EsTopTabBarNavigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: widget.tabWidgets.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _selectedWidget(int index, Widget defaultWidget) {
      if (widget.selectedWidget == null) {
        return defaultWidget;
      } else {
        return widget.selectedWidget!(index);
      }
    }

    ;
    return Column(
      children: [
        // give the tab bar a height [can change hheight to preferred height]
        Expanded(
          flex: ((widget.tabBarRatio??0.1)*10).round(),
          child: Container(
            decoration: widget.unSelectedTabDecoration ??
                BoxDecoration(
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
            child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: widget.selectedTabDecoration ??
                    BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: StructureBuilder.styles!.primaryColor,
                        ),
                      ),
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                onTap: (int num) {
                  setState(() {
                    _selectedIndex = num;
                  });
                },
                tabs: List.generate(
                  widget.tabWidgets.length,
                  (index) => index == _selectedIndex
                      ? _selectedWidget(
                          index,
                          Tab(
                            child: widget.tabWidgets[index],
                          ),
                        )
                      : Tab(
                          child: widget.tabWidgets[index],
                        ),
                )),
          ),
        ),
        Expanded(
          flex: 10,
          child: TabBarView(

              controller: _tabController,
              children: List.generate(
                widget.pageWidgets.length,
                (index) => Center(child: widget.pageWidgets[index]),
              )),
        ),
      ],
    );
  }
}
