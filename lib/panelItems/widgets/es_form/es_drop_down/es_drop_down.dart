import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../es_image/es_svg_icon.dart';
import '../../es_text/es_ordinary_text.dart';

class EsDropDown extends StatefulWidget {
  String value;
  String initialTitle;
  String idName;
  String valueName;
  Widget? subTitleWidget;
  List list;
  Function(String id)? onChanged;
  TextEditingController? controller;

  Widget? buttonWidget;
  Offset? menuOffset;
  BoxDecoration? dropdownDecoration;
  double? dropdownWidth;
  double? dropdownItemsHeight;
  EdgeInsetsGeometry? buttonPadding;

  EsDropDown(
      {this.buttonWidget,
      this.menuOffset,
      this.dropdownDecoration,
      this.dropdownWidth,
      this.dropdownItemsHeight,
        this.buttonPadding,
      this.value = "",
      required this.list,
      this.onChanged,
      this.controller,
      this.idName = "_id",
      this.valueName = "title",
      this.subTitleWidget,
      this.initialTitle = ":انتخاب کنید"});

  @override
  State<StatefulWidget> createState() {
    return _EsDropDownState();
  }
}

class _EsDropDownState extends State<EsDropDown> {
  String _value = "";
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.value;
    _list = widget.list;

    _list.insert(0, {widget.idName: "", widget.valueName: widget.initialTitle});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            // key: dropdownKey,
            customButton:
                widget.buttonWidget ??
                Container(
              padding:widget.buttonPadding?? EdgeInsets.symmetric(
                vertical: StructureBuilder.dims!.h1Padding,
                horizontal: StructureBuilder.dims!.h1Padding,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h1Padding,
              ),
              decoration: BoxDecoration(
                  color: StructureBuilder.styles!.primaryColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
              child: Row(
                children: [
                  EsSvgIcon(
                    "assets/svgs/down.svg",
                    color: StructureBuilder.styles!.primaryLightColor,
                    size: StructureBuilder.dims!.h3IconSize * 0.5,
                  ),
                  EsHSpacer(),
                  EsOrdinaryText(
                    _list[findIndexOfValue(_list, _value)][widget.valueName],
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                ],
              ),
            ),
            items: _list.map((model) {
              return DropdownMenuItem(
                value: model[widget.idName].toString(),
                child: EsOrdinaryText(
                  model[widget.valueName],
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
              );
            }).toList(),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value.toString();

                widget.onChanged!(value.toString());
                widget.controller==null?null:widget.controller!.text=value!;
              });
            },
            itemHeight:
                widget.dropdownItemsHeight ??
                StructureBuilder.dims!.h0Padding * 2,
            // buttonWidth: 300,
            barrierDismissible: true,
            // alignment: Alignment.centerRight,
            // itemPadding: const EdgeInsets.only(left: 16, right: 16),
            dropdownWidth:
                widget.dropdownWidth ??
                StructureBuilder.dims!.h0Padding * 7,
            // dropdownPadding: EdgeInsets.symmetric(vertical: 6),
            dropdownDecoration:
                widget.dropdownDecoration ??
                BoxDecoration(
                    color: StructureBuilder.styles!.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h1BorderRadius))),

            offset:
                widget.menuOffset ??
                Offset(0, 0),
          ),
        ),
        EsVSpacer(),
        widget.subTitleWidget ?? Container()
      ],
    );
  }

  @override
  void didUpdateWidget(covariant EsDropDown oldWidget) {
    super.didUpdateWidget(oldWidget);

    _list = widget.list;

    if (_list.length == oldWidget.list.length - 1) {
      _list.insert(
          0, {widget.idName: "", widget.valueName: widget.initialTitle});
    }
    _value = widget.value;
  }

  int findIndexOfValue(List list, String value) {
    int _i = 0;
    for (int i = 0; i < list.length; i++) {
      if (list[i][widget.idName] == value) {
        _i = i;
      }
    }
    return _i;
  }
}
