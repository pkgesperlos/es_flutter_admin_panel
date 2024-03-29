// import 'package:es_flutter_components/resources/Constants/constants.dart';
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/constants/config.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

// import '../resources/Constants/styles.dart';
// import '../resources/constants/config.dart';

class EsSubtitle extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color? color;
  TextDecoration? decoration;
  Color? backgroundColor;
  String? fontFamily;
  bool isBold;

  EsSubtitle(
      this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size,
        this.backgroundColor,
        this.decoration,
        this.color ,
        this.fontFamily ,
      this.isBold=false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        decoration: decoration??TextDecoration.none,
        backgroundColor: backgroundColor??Colors.transparent,
        // height: (size ?? Dims.h4FontSize(context))*0.04,
        color: color??StructureBuilder.styles!.textColor().primary,
        fontSize: size ?? StructureBuilder.dims!.h4FontSize,
        fontFamily:fontFamily??StructureBuilder.configs!.fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,

        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

}
