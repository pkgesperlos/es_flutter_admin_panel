
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'package:flutter/foundation.dart' show kIsWeb;



class EsSvgIcon extends StatelessWidget {
  String? path;
  double? size;
  Color? color;

  EsSvgIcon(this.path, {this.size, this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
    /*  kIsWeb
        ? Image.network(
      path!,

      color: color ?? null,
      width: (size ?? Dims.h1IconSize(context))*0.8,
      height: (size ?? Dims.h1IconSize(context))*0.8,
    )
        :*/
    SvgPicture.asset(
      path!,
      color: color ?? null,
      width: (size ?? StructureBuilder.dims!.h1IconSize)*0.8,
      height: (size ?? StructureBuilder.dims!.h1IconSize)*0.8,
    )
    ;
  }
}
