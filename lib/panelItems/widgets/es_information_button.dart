
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EsInformationButton extends StatelessWidget {
  String text;
  Widget? icon;
  String dialogeText;
  Color? ColorAsset;
  Color? buttonFontColor;
  Color? buttonBorderColor;
  Color? buttonShadowColor;
  double? size;
  TextAlign? align;

  EsInformationButton({
    this.text="i",
    this.icon,
    this.dialogeText="",
    this.ColorAsset ,
    this.buttonFontColor,
    this.buttonBorderColor,
    this.buttonShadowColor,
    this.size ,
    this.align ,

  });

  @override
  Widget build(BuildContext context) {
    Widget customDialog() {

      return Dialog(

        child: Container(

          color:Colors.white,
          child:Container(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child:  EsOrdinaryText(dialogeText ,align:align?? TextAlign.left,),),
        ),
      );
    }
    return IntrinsicWidth(
      child: InkWell(

          onTap: (){showDialog(context: context, builder: (context) => customDialog());},
          child:icon??EsSvgIcon("assets/svgs/info.svg",
              color:buttonFontColor ?? StructureBuilder.styles!.primaryColor,
              size:size?? StructureBuilder.dims!.h1FontSize
          )

      ),
    );
  }

}
