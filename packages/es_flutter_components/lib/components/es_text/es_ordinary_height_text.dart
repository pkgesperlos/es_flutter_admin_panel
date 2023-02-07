
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class EsOrdinaryHeightText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  double? height;
  Color? color;
  String? fontFamily;
  bool overFlowTag;
  int maxLine;
  bool isBold;

  EsOrdinaryHeightText(this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size,
        this.color,
        this.fontFamily ,
        this.overFlowTag = false,
        this.maxLine = 3,
        this.isBold = false,
        this.height})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: overFlowTag ? maxLine : null,
      textAlign: align,
      text: TextSpan(
        text: data,

        style: TextStyle(
          height: height==null?null:height,
          textBaseline: TextBaseline.alphabetic,
          color: color??StructureBuilder.styles!.textColor().primary,
          fontSize: size ?? StructureBuilder.dims!.h3FontSize,
          fontFamily:fontFamily??StructureBuilder.configs!.fontFamily,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          overflow: overFlowTag ? TextOverflow.ellipsis : null,
        ),
      ),
    );
  }
}
