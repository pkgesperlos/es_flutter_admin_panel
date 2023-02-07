
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsSamplePageMaker extends StatelessWidget {
  int? pageNum;
   EsSamplePageMaker({Key? key,this.pageNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: StructureBuilder.styles!.primaryDarkColor,
        borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))
      ),
      child: Center(child: EsHeader("page$pageNum",color: StructureBuilder.styles!.textColor().secondary,),),
    );
  }
}
