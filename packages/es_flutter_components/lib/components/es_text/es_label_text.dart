
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/constants/config.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

// import '../resources/Constants/constants.dart';
// import '../resources/Constants/dims.dart';
// import '../resources/constants/config.dart';

class EsLabelText extends StatelessWidget {
  String data;
  TextDecoration? decoration;
  TextAlign align;
  double? size;
  Color? color;
  Color? backgroundColor;
  String? fontFamily;
  bool isBold;

  EsLabelText(this.data,
      {Key? key,
        this.align = TextAlign.center,

        this.decoration ,
        this.size ,
        this.color ,
        this.backgroundColor ,
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
        // height: (size ?? Dims.h3FontSize(context))*0.04,
        color: color??StructureBuilder.styles!.textColor().primary,
        fontSize: size ?? StructureBuilder.dims!.h4FontSize,
        fontFamily:fontFamily??StructureBuilder.configs!.fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}


