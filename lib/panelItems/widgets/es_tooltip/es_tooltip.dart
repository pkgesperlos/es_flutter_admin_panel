import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../es_button/es_button.dart';

class EsTooltip extends StatelessWidget {
  Widget widget;
  String message;
  Duration? waitDuration;
  Duration? showDuration;
  bool? preferBelow;
  TextStyle? textStyle;
  BoxDecoration? boxDecoration;
  EdgeInsetsGeometry? padding;

  EsTooltip({
    Key? key,
    required this.message,
    required this.widget,
    this.textStyle,
    this.waitDuration,
    this.showDuration,
    this.preferBelow,
    this.boxDecoration,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
        message: message,
        waitDuration: waitDuration ?? Duration(milliseconds: 0),
        showDuration: showDuration ?? Duration(seconds: 2),
        padding: padding ?? EdgeInsets.all(StructureBuilder.dims!.h1Padding),
        margin: EdgeInsets.only(
            left: 300),
        verticalOffset: StructureBuilder.dims!.h0Padding,
        preferBelow: preferBelow ?? true,
        textStyle: textStyle ??
            TextStyle(
                fontSize: 15,
                color: StructureBuilder.styles!.primaryLightColor,
                fontWeight: FontWeight.normal),
        decoration: boxDecoration ??
            BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: preferBelow ?? true
                        ? Radius.circular(StructureBuilder.dims!.h1BorderRadius)
                        : Radius.circular(0),
                    bottomRight: preferBelow ?? true
                        ? Radius.circular(0)
                        : Radius.circular(
                            StructureBuilder.dims!.h1BorderRadius)),
                color: StructureBuilder.styles!.t2Color),
        child: widget);
  }
}
