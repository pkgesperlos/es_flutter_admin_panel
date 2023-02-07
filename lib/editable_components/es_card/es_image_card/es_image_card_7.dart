import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../../../main.dart';

class EsImageCard7 extends StatelessWidget {
  String? imagePath;

   EsImageCard7({Key? key,
   this.imagePath,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(
              StructureBuilder.dims!.h0BorderRadius))),
      child: Image.asset(
        imagePath??"assets/images/img2.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
