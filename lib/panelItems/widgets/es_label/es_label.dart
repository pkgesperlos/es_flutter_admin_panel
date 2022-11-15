import 'dart:math';

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsLabel extends StatelessWidget {
  Widget? widget;
  Color? color;
  bool? hasBorder;
  Color? borderColor;
  double? size;
  double? widgetSize;
  bool? isUnique;

  EsLabel({
    Key? key,
    this.widget,
    this.color,
    this.borderColor,
    this.hasBorder,
    this.isUnique,
    this.size,
    this.widgetSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _size = size ?? StructureBuilder.dims!.h3IconSize * 0.5;
    double _widgetSize = widgetSize ?? _size;

    return isUnique??true
        ?_label()
        : Stack(
      children: [
        Container(
            padding: EdgeInsets.all(_size / 2), child: widget ?? Container()),
        Positioned(
          top:widgetSize==null?null:_widgetSize,
          left:widgetSize==null?null: _widgetSize,
            child: _label())
      ],
    );
  }


  Widget _label(){
    double _size = size ?? StructureBuilder.dims!.h3IconSize * 0.5;
    double _widgetSize = widgetSize ?? _size;
    return Container(
        decoration: BoxDecoration(
            color: color ??
                StructureBuilder.styles!.dangerColor().dangerRegular,
            border: hasBorder ?? false
                ? Border.all(
                color: borderColor ??
                    StructureBuilder.styles!.primaryLightColor,
                width: _size * 0.2)
                : null,
            borderRadius: BorderRadius.all(Radius.circular(
              _size,
            ))),
        child: Icon(Icons.circle,
            size: _size,
            color: color ??
                StructureBuilder.styles!.dangerColor().dangerRegular));
  }
}
