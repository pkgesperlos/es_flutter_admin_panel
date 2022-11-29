import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_custom_check_box.dart';

class EsCustomCheckboxGroup extends StatefulWidget {
  List<String> titleList;
  Widget? subTitleWidget;
  Axis? axis;
  List<bool> valueList;
  void Function(List<TextEditingController>?)? onChanged;
  TextEditingController? controller;
  List<TextEditingController> controllerList;
  bool? isScrollable;

  EsCustomCheckboxGroup(
      {Key? key,
      required this.titleList,
      this.axis,
      this.subTitleWidget,
      this.onChanged,
      required this.controllerList,
      this.controller,
      this.isScrollable,
      required this.valueList})
      : super(key: key);

  @override
  State<EsCustomCheckboxGroup> createState() => _EsRadioButton();
}

List<bool> _valueList = [];
List<String> _selectedList = [];

class _EsRadioButton extends State<EsCustomCheckboxGroup> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _valueList = widget.valueList;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.isScrollable ?? true
              ? Container(
            height: 100,
            padding: EdgeInsets.all(StructureBuilder.dims!.h1BorderRadius),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1BorderRadius)),
                border: Border.all(
                    color: StructureBuilder.styles!.primaryColor)),
            child: SingleChildScrollView(
              child: Column(children: content()),
            ),
          )
              : Wrap(
              direction: widget.axis ?? Axis.horizontal, children: content()),
          widget.subTitleWidget ?? Container()
        ],
      ),
    );
  }

  List<Widget> content(){
    return List.generate(
        widget.titleList.length,
            (index) => IntrinsicWidth(
          child: Row(
            children: [
              EsOrdinaryText(
                widget.titleList[index],
              ),
              checkboxWidget(index, _valueList[index])
            ],
          ),
        ));
  }

  Widget checkboxWidget(int index, bool value) {
    return EsCustomCheckBox(
      value: value,
      onChanged: (bool value) {
        setState(() {
          _valueList[index] = value;

          if (_valueList[index] == false) {
            _selectedList.remove(widget.titleList[index]);
          }
          if (_valueList[index] == true) {
            _selectedList.add(widget.titleList[index]);
            widget.controllerList[index].text = widget.titleList[index];
          }

          widget.controller!.text = _selectedList.join(",").toString();
          widget.onChanged!(widget.controllerList);
        });
      },
    );
  }
}
