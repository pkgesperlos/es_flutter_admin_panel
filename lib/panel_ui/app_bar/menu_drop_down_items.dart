

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';


class MenuDropdownItems extends StatelessWidget {
  String title;
  // String svgPath;
  void Function()? onTap;
  MenuDropdownItems({Key? key,required this.title,
    // required this.svgPath,
    this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Column(
        children: [
          EsVSpacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              EsTitle(title,color: StructureBuilder.styles!.primaryLightColor,),
              EsHSpacer(big: true,),
              /*    EsSvgIcon(
                svgPath,
                size: StructureBuilder.dims!.h2IconSize,
                color:StructureBuilder. styles!.t11Color,
              ),*/
            ],
          ),
          EsVSpacer(big: true,),
          // Divider(thickness: 1,color: StructureBuilder. styles!.t11Color,height: 0,),

        ],
      ),
    );
  }

}
