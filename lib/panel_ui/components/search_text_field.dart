import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  double? width;
  double? height;
   SearchTextField({Key? key
     ,this.width
     ,this.height
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height:height,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        // bottom: StructureBuilder.dims!.h2Padding,
        left: StructureBuilder.dims!.h1Padding,
        right: StructureBuilder.dims!.h1Padding,
        // vertical: StructureBuilder.dims!.h3Padding,
        // horizontal: StructureBuilder.dims!.h3Padding,
      ),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
      child: TextField(

        style: TextStyle(color: StructureBuilder.styles!.primaryLightColor,
            fontSize: StructureBuilder.dims!.h2FontSize),
        decoration: InputDecoration(
            prefixIcon:Padding(
              padding:  EdgeInsets.all(StructureBuilder.dims!.h2Padding),
              child: EsSvgIcon(
                "assets/svgs/search_white.svg",
                color: StructureBuilder.styles!.t6Color,
                size: StructureBuilder.dims!.h3IconSize,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide:
              BorderSide(color: StructureBuilder.styles!.primaryLightColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
              BorderSide(color: StructureBuilder.styles!.primaryLightColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:
              BorderSide(color: StructureBuilder.styles!.primaryLightColor),
            )
        ),

        cursorColor:StructureBuilder.styles!.primaryLightColor ,



      ),

    );
  }
}
