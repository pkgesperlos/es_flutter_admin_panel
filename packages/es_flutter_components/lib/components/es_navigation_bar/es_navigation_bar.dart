import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsNavigationBar extends StatefulWidget {
  List<Widget> tabWidgetList;

  List<Function()> functionList;

  EdgeInsets? padding;
  Axis? direction;
  bool? isExpanded;
  BoxDecoration? activeDecoration;
  BoxDecoration? inActiveDecoration;

  EsNavigationBar({
    Key? key,
    required this.tabWidgetList,
    required this.functionList,
    this.padding,
    this.direction,
    this.isExpanded,
    this.activeDecoration,
    this.inActiveDecoration,
  }) : super(key: key);

  @override
  State<EsNavigationBar> createState() => _EsNavigationBarState();
}

class _EsNavigationBarState extends State<EsNavigationBar> {
  late BoxDecoration _activeDecoration;
  late BoxDecoration _inActiveDecoration;
  late  List<BoxDecoration>   _currentDecoration;

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    _activeDecoration=widget.activeDecoration??BoxDecoration();
    _inActiveDecoration=widget.inActiveDecoration??BoxDecoration();

   _currentDecoration=List.generate(widget.tabWidgetList.length,
            (index) => _inActiveDecoration);


  }


  @override
  Widget build(BuildContext context) {

    if (widget.direction == Axis.horizontal) {
      return Row(
        children: _list(),
        crossAxisAlignment: CrossAxisAlignment.end,
      );
    }

    if (widget.direction == Axis.vertical) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: _list(),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [..._list()],
    );
  }

  List<Widget> _list() {
    return List.generate(
        widget.tabWidgetList.length,
        (index) =>
            widget.isExpanded ?? false ? _expandedWidget(index) : _widget(index));
  }

  Widget _widget(
    int index,
  ) {
    return InkWell(
        onTap:
        // widget.functionList[index],
            (){

            setState((){
                  _currentDecoration=
                      List.generate(widget.tabWidgetList.length, (index) => _inActiveDecoration);
                  _currentDecoration[index]=_activeDecoration;
                         });
            widget.functionList[index]();
        },
        child: Container(
          decoration: _currentDecoration[index],
          padding: widget.padding ?? EdgeInsets.all(StructureBuilder.dims!.h1Padding),
          child: widget.tabWidgetList[index],
        ));
  }

  Widget _expandedWidget(
    int index,
  ) {
    return Expanded(
      child: InkWell(
          onTap: widget.functionList[index],
          child: Padding(
            padding: widget.padding ?? EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: widget.tabWidgetList[index],
          )),
    );
  }
}
