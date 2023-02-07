import 'dart:math';

import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsSideTabBarNavigation extends StatefulWidget {
  List<Widget> tabWidgets;
  List<Widget> pageWidgets;
  Widget Function(int)? selectedWidget;
  BoxDecoration? selectedTabDecoration;
  BoxDecoration? unSelectedTabDecoration;
  bool? isleft;
  double? tabBarRatio;

  EsSideTabBarNavigation({
    Key? key,
    required this.tabWidgets,
    required this.pageWidgets,
    this.selectedWidget,
    this.selectedTabDecoration,
    this.unSelectedTabDecoration,
    this.isleft,
    this.tabBarRatio,
  }) : super(key: key);

  @override
  _EsSideTabBarNavigationState createState() => _EsSideTabBarNavigationState();
}

class _EsSideTabBarNavigationState extends State<EsSideTabBarNavigation>
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

    return Transform.rotate(
      angle: widget.isleft ?? true ? -pi / 2 : pi / 2,
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Expanded(
            flex: ((widget.tabBarRatio??0.2)*10).round(),
            child: Container(
              decoration: widget.unSelectedTabDecoration ??
                  BoxDecoration(
                    color: StructureBuilder.styles!.primaryLightColor,
                    border: Border(
                      bottom: BorderSide(
                        color: StructureBuilder.styles!.t4Color,
                      ),

                    ),
                  ),
              child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  indicator: widget.selectedTabDecoration ??
                      BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: StructureBuilder.styles!.t4Color,
                          ),
                          right: BorderSide(
                            color: StructureBuilder.styles!.t4Color,
                          ),
                          left: BorderSide(
                            color: StructureBuilder.styles!.t4Color,
                          ),

                        ),
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                  labelColor: StructureBuilder.styles!.primaryDarkColor,
                  unselectedLabelColor: Colors.black,
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
                              child:Transform.rotate(
                                angle: widget.isleft ?? true ? pi / 2 : -pi / 2,
                                child: widget.tabWidgets[index],)
                            ),
                          )
                        : Tab(
                            child: Transform.rotate(
                            angle: widget.isleft ?? true ? pi / 2 : -pi / 2,
                            child: widget.tabWidgets[index],
                          )),
                  )),
            ),
          ),
          Expanded(
            flex: 10,
            child: TabBarView(
                controller: _tabController,
                children: List.generate(
                  widget.pageWidgets.length,
                  (index) => Center(
                      child: Transform.rotate(
                          angle: widget.isleft ?? true ? pi / 2 : -pi / 2,
                          child: widget.pageWidgets[index])),
                )),
          ),
        ],
      ),
    );
  }
}
