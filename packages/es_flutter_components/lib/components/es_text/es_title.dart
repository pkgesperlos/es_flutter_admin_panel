
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/constants/config.dart';
import 'package:es_flutter_components/resources/constants/structure_config.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

// import '../resources/Constants/styles.dart';
// import '../resources/constants/config.dart';

class EsTitle extends StatelessWidget {
  String data;
  TextAlign? align;
  double? size;
  Color? color;
  TextDecoration? decoration;
  Color? backgroundColor;
  String? fontFamily;
  bool isBold;
  bool overFlowTag;
  int? maxLine;


  EsTitle(
      this.data,
      {Key? key,
        this.align ,
        this.size,
        this.decoration,
        this.backgroundColor,
        this.color ,
        this.fontFamily ,
      this.isBold=false,
        this.overFlowTag = false,
        this.maxLine ,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      data,
      textAlign: align??TextAlign.center,
      maxLines: maxLine??2,
      style: TextStyle(
        decoration: decoration??TextDecoration.none,
        backgroundColor: backgroundColor??Colors.transparent,
        // height: (size ?? Dims.h2FontSize(context))*0.04,
        color: color??StructureBuilder.styles!.textColor().primary,
        fontSize: size ?? StructureBuilder.dims!.h2FontSize,
        fontFamily:fontFamily??StructureBuilder.configs!.fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        overflow: overFlowTag ? TextOverflow.ellipsis : null,

        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

}
