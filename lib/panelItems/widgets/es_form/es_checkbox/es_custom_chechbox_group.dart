import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
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

  EsCustomCheckboxGroup(
      {Key? key,
      required this.titleList,
      this.axis,
      this.subTitleWidget,
      this.onChanged,
      required this.controllerList,
      this.controller,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
            direction: widget.axis ?? Axis.horizontal,
            children: List.generate(
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
                    ))),
        EsVSpacer(),
        widget.subTitleWidget ?? Container()
      ],
    );
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
