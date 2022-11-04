import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsContentLabel extends StatelessWidget {
  Widget? widget;
  String? text;
  Color? textColor;
  Widget? labelContent;
  Color? color;
  bool? hasBorder;
  Color? borderColor;
  BorderRadius? borderRadius;
  double size;
  double? widgetSize;

  EsContentLabel({
    Key? key,
    this.widget,
    this.text,
    this.textColor,
    this.labelContent,
    this.color,
    this.borderColor,
    this.hasBorder,
    this.borderRadius,
    required this.size,
     this.widgetSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _widgetSize = widgetSize ?? size;
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.all(size*0.75),
            child: widget ?? Container()),
        Positioned(
            top:widgetSize==null?null:_widgetSize,
            left:widgetSize==null?null: _widgetSize,
            child: Container(
          decoration: BoxDecoration(
              color: borderColor ?? StructureBuilder.styles!.primaryLightColor,
              border:hasBorder??false? Border.all(
                  color:
                      borderColor ?? StructureBuilder.styles!.primaryLightColor,
                  width: size*0.1):null,
              borderRadius:borderRadius?? BorderRadius.all(Radius.circular(size*0.4))),
          child:
               Container(
                  padding:
                      EdgeInsets.all(size * 0.2),
                  decoration: BoxDecoration(
                      color: color ??
                          StructureBuilder.styles!.dangerColor().dangerRegular,
                      borderRadius:borderRadius?? BorderRadius.all(Radius.circular(size*0.3))
                  ),
                  child: labelContent??EsLabelText(text??"",
                  color: textColor??StructureBuilder.styles!.primaryLightColor,),
                ),
        ))
      ],
    );
  }
}
