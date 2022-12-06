
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PageTitleContainer extends StatelessWidget {

  String title;


  PageTitleContainer({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
      ),
      margin: EdgeInsets.only(
          top:StructureBuilder.dims!.h0Padding*1.3,
          left:StructureBuilder.dims!.h0Padding*1.35,
          right:StructureBuilder.dims!.h0Padding*1.35,
          bottom:StructureBuilder.dims!.h3Padding,
      ),

      width: double.maxFinite,
      ////////////////////////
      child: EsOrdinaryText(
        title,
      ),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryLightColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h2FontSize)),
        boxShadow: [
          BoxShadow(
            color: StructureBuilder.styles!.primaryColor,
            // blurRadius: 2.0,

            offset: Offset(0, 1.5),
          ),
        ],

      ),

    );
  }

}
