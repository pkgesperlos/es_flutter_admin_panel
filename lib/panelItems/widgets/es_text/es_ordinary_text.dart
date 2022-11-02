import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/constants/config.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../resources/Constants/dims.dart';
// import '../resources/constants/config.dart';

class EsOrdinaryText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  double? height;
  Color? color;
  String? fontFamily;
  bool overFlowTag;
  int maxLine;
  bool isBold;

  EsOrdinaryText(this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size,
        this.color ,
        this.fontFamily ,
        this.overFlowTag = false,
        this.maxLine = 3,
        this.isBold = false,
        this.height})
      : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Text(
      data,
      textAlign: align,
      maxLines: overFlowTag ? maxLine : null,
      style: TextStyle(
    height: height==null?null:height,
      textBaseline: TextBaseline.alphabetic,
        color: color??StructureBuilder.styles!.textColor().primary,
        fontSize: size ?? StructureBuilder.dims!.h3FontSize,
        fontFamily:fontFamily??StructureBuilder.configs!.fontFamily,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      overflow: overFlowTag ? TextOverflow.ellipsis : null,
    ),
    );
  }
}