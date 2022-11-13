

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';


class MenuDropdownWidget extends StatelessWidget {
  Widget? buttonWidget;
  void Function()? onTap;
   MenuDropdownWidget({Key? key,
     required this.buttonWidget,

     this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: buttonWidget??Container(),
    );
  }

}
