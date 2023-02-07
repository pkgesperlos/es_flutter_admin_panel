import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_height_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



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
    Key? key,
    this.text = "i",
    this.icon,
    this.dialogeText = "",
    this.ColorAsset,
    this.buttonFontColor,
    this.buttonBorderColor,
    this.buttonShadowColor,
    this.size,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customDialog() {
      return Dialog(
        child: Container(
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [


                  EsOrdinaryHeightText(

                    dialogeText,
                    height: 1.7,
                    align: align ?? TextAlign.left,
                  ),
                  EsVSpacer(big:true,factor: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Clipboard.setData(ClipboardData(text: dialogeText));
                          // copied successfully
                        },
                        child: Row(
                          children: [

                            EsSvgIcon("packages/es_flutter_components/assets/svgs/clipboard.svg",
                              size: StructureBuilder.dims!.h3IconSize,
                              color: StructureBuilder.styles!.primaryDarkColor,
                            ),
                            EsOrdinaryText("Copy"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return IntrinsicWidth(
      child: InkWell(
          onTap: () {
            showDialog(context: context, builder: (context) => customDialog());
          },
          child: icon ??
              EsSvgIcon("packages/es_flutter_components/assets/svgs/info.svg",
                  color:
                      buttonFontColor ?? StructureBuilder.styles!.primaryDarkColor,
                  size: size ?? StructureBuilder.dims!.h1FontSize)),
    );
  }
}
